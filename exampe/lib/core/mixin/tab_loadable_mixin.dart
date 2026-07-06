import 'package:get/get.dart';

/// Mixin untuk tab controller di [IndexedStack] navigation.
/// Data hanya di-fetch saat tab pertama kali aktif atau saat [refresh] diminta.
mixin TabLoadable on GetxController {
  bool _hasLoaded = false;

  Future<void> loadTabData();

  Future<void> loadIfNeeded({bool refresh = false}) async {
    if (_hasLoaded && !refresh) return;
    await loadTabData();
    _hasLoaded = true;
  }
}
