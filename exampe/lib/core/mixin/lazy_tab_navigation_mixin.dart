import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

mixin LazyTabNavigation on GetxController {
  int get tabCount;

  final currentIndex = 0.obs;
  final RxList<int> visitedTabIndices = <int>[0].obs;

  bool isTabVisited(int index) => visitedTabIndices.contains(index);

  @override
  void onReady() {
    super.onReady();
    ensureTabLoaded(0);
  }

  void changeTab(int index, {bool refresh = false}) {
    if (index < 0 || index >= tabCount) return;
    _markVisited(index);
    currentIndex.value = index;
    ensureTabLoaded(index, refresh: refresh);
  }

  void changePage(int index, {bool refresh = false}) => changeTab(index, refresh: refresh);

  void _markVisited(int index) {
    if (!visitedTabIndices.contains(index)) {
      visitedTabIndices.add(index);
    }
  }

  void ensureTabLoaded(int index, {bool refresh = false}) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      loadTabController(index, refresh: refresh);
    });
  }

  Future<void> loadTabController(int index, {bool refresh = false});
}
