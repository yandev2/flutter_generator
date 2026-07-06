import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../../core/ui/dialog/app_ui_dialog.dart';
import '../../core/ui/theme/app_dialog_theme.dart';

class LocationHelper {
  LocationHelper._();

  /* -------------------------------------------------------------------------- */
  /*                               PERMISSION                                   */
  /* -------------------------------------------------------------------------- */

  static Future<void> _ensurePermission() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw LocationException(
        'Layanan lokasi tidak aktif',
        LocationErrorType.serviceDisabled,
      );
    }

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.denied) {
      throw LocationException(
        'Izin lokasi ditolak',
        LocationErrorType.permissionDenied,
      );
    }

    if (permission == LocationPermission.deniedForever) {
      throw LocationException(
        'Izin lokasi ditolak permanen. Aktifkan melalui pengaturan.',
        LocationErrorType.permissionDeniedForever,
      );
    }
  }

  /* -------------------------------------------------------------------------- */
  /*                            LOCATION SETTINGS                                */
  /* -------------------------------------------------------------------------- */

  static LocationSettings _settings({
    LocationAccuracy accuracy = LocationAccuracy.high,
    int distanceFilter = 100,
    Duration interval = const Duration(seconds: 10),
  }) {
    if (kIsWeb) {
      return WebSettings(
        accuracy: accuracy,
        distanceFilter: distanceFilter,
        maximumAge: const Duration(minutes: 5),
      );
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return AndroidSettings(
          accuracy: accuracy,
          distanceFilter: distanceFilter,
          intervalDuration: interval,
          forceLocationManager: true,
          foregroundNotificationConfig: const ForegroundNotificationConfig(
            notificationTitle: 'Lokasi Aktif',
            notificationText:
                'Aplikasi menggunakan lokasi untuk fitur jadwal sholat',
            enableWakeLock: true,
          ),
        );

      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return AppleSettings(
          accuracy: accuracy,
          activityType: ActivityType.other,
          distanceFilter: distanceFilter,
          pauseLocationUpdatesAutomatically: true,
          showBackgroundLocationIndicator: false,
        );

      default:
        return LocationSettings(
          accuracy: accuracy,
          distanceFilter: distanceFilter,
        );
    }
  }

  /* -------------------------------------------------------------------------- */
  /*                            CURRENT POSITION                                 */
  /* -------------------------------------------------------------------------- */

  static Future<Position> getCurrentPosition({
    LocationAccuracy accuracy = LocationAccuracy.high,
  }) async {
    await _ensurePermission();

    return await Geolocator.getCurrentPosition(
      locationSettings: _settings(accuracy: accuracy),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                              POSITION STREAM                                */
  /* -------------------------------------------------------------------------- */

  static Stream<Position> positionStream({
    LocationAccuracy accuracy = LocationAccuracy.high,
    int distanceFilter = 100,
    Duration interval = const Duration(seconds: 10),
  }) async* {
    await _ensurePermission();

    yield* Geolocator.getPositionStream(
      locationSettings: _settings(
        accuracy: accuracy,
        distanceFilter: distanceFilter,
        interval: interval,
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                  ERROR HANDLE                                      */
  /* -------------------------------------------------------------------------- */

  static void handleLocationError(LocationException e) {
    if (Get.context == null) return;
    
    switch (e.type) {
      case LocationErrorType.serviceDisabled:
        showAppUiDialog(
          context: Get.context!,
          title: 'Inactive Location',
          message: 'Enable GPS to continue',
          variant: AppDialogVariant.warning,
          confirmLabel: 'Open Settings',
          onConfirm: () {
            Navigator.of(Get.context!).maybePop();
            LocationHelper.openLocationSettings();
          },
        );
        break;

      case LocationErrorType.permissionDenied:
        showAppUiDialog(
          context: Get.context!,
          title: 'Location Permission',
          message: 'Location permission is required',
          variant: AppDialogVariant.warning,
          showCancel: false,
          confirmLabel: 'OK',
          onConfirm: () {
            Navigator.of(Get.context!).maybePop();
          },
        );
        break;

      case LocationErrorType.permissionDeniedForever:
        showAppUiDialog(
          context: Get.context!,
          title: 'Permission Denied',
          message: 'Enable location permission in app settings',
          variant: AppDialogVariant.danger,
          confirmLabel: 'Buka Pengaturan',
          onConfirm: () {
            Navigator.of(Get.context!).maybePop();
            LocationHelper.openAppSettings();
          },
        );
        break;
    }
  }

  /* -------------------------------------------------------------------------- */
  /*                                  UTILS                                      */
  /* -------------------------------------------------------------------------- */

  static Future<List<Placemark>> getPlacemark(
    double latitude,
    double longitude,
  ) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(
      latitude,
      longitude,
    );
    return placemarks;
  }

  static double distance(
    double startLat,
    double startLong,
    double endLat,
    double endLong,
  ) {
    return Geolocator.distanceBetween(startLat, startLat, endLat, endLong);
  }

  static Future<Position?> getLastKnownPosition() {
    return Geolocator.getLastKnownPosition();
  }

  static Future<bool> openAppSettings() {
    return Geolocator.openAppSettings();
  }

  static Future<bool> openLocationSettings() {
    return Geolocator.openLocationSettings();
  }

  /* -------------------------------------------------------------------------- */
  /*                        ONE-SHOT (FORM / NO NOTIFICATION)                   */
  /* -------------------------------------------------------------------------- */

  /// Ambil posisi sekali — tanpa foreground notification, cocok untuk form.
  static Future<Position> getCurrentPositionQuick({
    LocationAccuracy accuracy = LocationAccuracy.high,
  }) async {
    await _ensurePermission();
    return await Geolocator.getCurrentPosition(
      locationSettings: LocationSettings(accuracy: accuracy),
    );
  }

  /// Format [Placemark] menjadi string alamat yang ringkas.
  static String formatPlacemarkAddress(Placemark p) {
    final parts = <String>[
      if ((p.street ?? '').isNotEmpty) p.street!,
      if ((p.subLocality ?? '').isNotEmpty) p.subLocality!,
      if ((p.locality ?? '').isNotEmpty) p.locality!,
      if ((p.subAdministrativeArea ?? '').isNotEmpty) p.subAdministrativeArea!,
      if ((p.administrativeArea ?? '').isNotEmpty) p.administrativeArea!,
    ];
    return parts.join(', ');
  }

  /// Ambil koordinat + reverse-geocode menjadi [LocationCaptureResult].
  /// Jika geocoding gagal, [address] akan `null` — koordinat tetap dikembalikan.
  static Future<LocationCaptureResult>
  captureCurrentLocationWithAddress() async {
    final position = await getCurrentPositionQuick();
    String? address;
    try {
      final placemarks = await getPlacemark(
        position.latitude,
        position.longitude,
      );
      if (placemarks.isNotEmpty) {
        address = formatPlacemarkAddress(placemarks.first);
        if (address.trim().isEmpty) address = null;
      }
    } catch (_) {
      // geocoding gagal — tetap lanjut tanpa alamat
    }
    return LocationCaptureResult(
      latitude: position.latitude,
      longitude: position.longitude,
      address: address,
    );
  }
}

/* -------------------------------------------------------------------------- */
/*                            CAPTURE RESULT                                  */
/* -------------------------------------------------------------------------- */

class LocationCaptureResult {
  final double latitude;
  final double longitude;

  /// `null` jika reverse-geocoding gagal (offline / API limit / placemark kosong).
  final String? address;

  const LocationCaptureResult({
    required this.latitude,
    required this.longitude,
    this.address,
  });
}

/* -------------------------------------------------------------------------- */
/*                               EXCEPTION                                    */
/* -------------------------------------------------------------------------- */

class LocationException implements Exception {
  final String message;
  final LocationErrorType type;

  LocationException(this.message, this.type);
}

enum LocationErrorType {
  serviceDisabled,
  permissionDenied,
  permissionDeniedForever,
}
