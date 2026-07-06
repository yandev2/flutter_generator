import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// ─── FAILURES ─────────────────────────────────────────────────────────
/// Freezed Union implementation of Failures returned from the Domain layer
/// via `Either<Failure, T>`.
@freezed
abstract class Failure with _$Failure {
  /// Server responded with an error (4xx, 5xx).
  const factory Failure.server({required String message, int? statusCode}) =
      _ServerFailure;

  /// No internet connection or server unreachable.
  const factory Failure.network({
    @Default('Tidak ada koneksi internet. Periksa jaringan Anda.')
    String message,
  }) = _NetworkFailure;

  /// User session expired or token invalid (401).
  const factory Failure.unauthorized({
    @Default('Sesi Anda telah berakhir. Silakan login kembali.') String message,
  }) = _UnauthorizedFailure;

  /// Request took too long.
  const factory Failure.timeout({
    @Default('Koneksi timeout. Silakan coba lagi.') String message,
  }) = _TimeoutFailure;

  /// Local storage/cache operation failed.
  const factory Failure.cache({
    @Default('Gagal mengakses data lokal.') String message,
  }) = _CacheFailure;

  /// Input validation failed (e.g., form errors from API).
  const factory Failure.validation({
    required String message,
    Map<String, dynamic>? errors,
  }) = _ValidationFailure;

  /// Catch-all for unexpected errors.
  const factory Failure.unexpected({
    @Default('Terjadi kesalahan yang tidak terduga.') String message,
  }) = _UnexpectedFailure;
}
