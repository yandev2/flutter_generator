import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:heroicons/heroicons.dart';

import '../../theme/app_scale.dart';
import '../ui/input/app_input.dart';
import '../ui/input/parts/input_affix.dart';
import '../ui/theme/app_input_theme.dart';

class AppbarMain extends StatefulWidget {
  const AppbarMain({
    super.key,
    required this.title,
    this.onSearch,
    this.isSearch,
    this.onReset,
    this.onBack,
    this.actions,
    this.tabfilter,
  });

  final Function(String)? onSearch;
  final RxString? isSearch;
  final VoidCallback? onReset;
  final Callback? onBack;
  final String title;
  final List<Widget>? actions;
  final Widget? tabfilter;

  @override
  State<AppbarMain> createState() => _AppbarMainState();
}

class _AppbarMainState extends State<AppbarMain> {
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;

    return SliverPersistentHeader(
      pinned: true,
      delegate: _AppbarDelegate(
        title: widget.title,
        onSearch: widget.onSearch,
        isSearch: widget.isSearch,
        onReset: widget.onReset,
        onBack: widget.onBack,
        actions: widget.actions,
        topPadding: topPadding,
        textController: _textController,
        tabfilter: widget.tabfilter,
      ),
    );
  }
}

class _AppbarDelegate extends SliverPersistentHeaderDelegate {
  _AppbarDelegate({
    required this.title,
    this.onSearch,
    this.isSearch,
    this.onReset,
    this.onBack,
    this.actions,
    required this.topPadding,
    required this.textController,
    this.tabfilter,
  });

  final Function(String)? onSearch;
  final RxString? isSearch;
  final VoidCallback? onReset;
  final Callback? onBack;
  final String title;
  final List<Widget>? actions;
  final double topPadding;
  final TextEditingController textController;
  final Widget? tabfilter;

  @override
  double get maxExtent => (onReset == null && tabfilter == null)
      ? size(70) + topPadding
      : size(45) + size(70) + topPadding;

  @override
  double get minExtent => size(70) + topPadding;

  @override
  bool shouldRebuild(covariant _AppbarDelegate oldDelegate) {
    return true; // We can optimize this, but returning true is safer for Rx bindings
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    if (isSearch != null &&
        isSearch!.value.isEmpty &&
        textController.text.isNotEmpty) {
      textController.clear();
    }

    // Hitung opacity untuk title agar fade out saat di-scroll
    double titleOpacity = 1.0 - (shrinkOffset / size(45));
    if (titleOpacity < 0) titleOpacity = 0.0;
    if (titleOpacity > 1) titleOpacity = 1.0;

    return Container(
      color: Get.theme.primaryColor,
      child: Stack(
        children: [
          Positioned(
            top: topPadding - (shrinkOffset * 0.5), // Efek parallax ringan
            left: 0,
            right: 0,
            height: size(45),
            child: Opacity(
              opacity: titleOpacity,
              child: Stack(
                children: [
                  if (onBack != null)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: size(17),
                          color: Colors.white,
                        ),
                        onPressed: onBack,
                      ),
                    ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      title,
                      style: Get.theme.textTheme.titleLarge?.copyWith(
                        fontSize: size(14),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: isSearch != null
                        ? Obx(() {
                            if (isSearch!.value.isNotEmpty) {
                              return IconButton(
                                icon: HeroIcon(
                                  HeroIcons.funnel,
                                  color: Colors.white,
                                  style: HeroIconStyle.solid,
                                  size: size(16),
                                ),
                                tooltip: 'Reset Filter',
                                onPressed: () {
                                  textController.clear();
                                  onReset?.call();
                                },
                              );
                            }
                            if (actions != null) {
                              return Row(
                                mainAxisSize: MainAxisSize.min,
                                children: actions!,
                              );
                            }
                            return const SizedBox.shrink();
                          })
                        : (actions != null
                              ? Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: actions!,
                                )
                              : const SizedBox.shrink()),
                  ),
                ],
              ),
            ),
          ),

          // Bagian Search Bar yang selalu ada di bawah header (Pinned)
          tabfilter == null
              ? Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: onReset == null ? size(20) : size(70),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Get.theme.scaffoldBackgroundColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(size(20)),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: size(16),
                      vertical: size(10),
                    ),
                    child: onReset == null
                        ? SizedBox()
                        : AppInput(
                            controller: textController,
                            hint: 'Cari ...',
                            prefix: InputAffix.icon(
                              Icons.search,
                              color: Colors.grey,
                              showDivider: false,
                            ),
                            style: AppInputTheme.of(context).copyWith(
                              fillColor: Get.theme.colorScheme.surface
                                  .withAlpha(200),
                            ),
                            keyboardType: TextInputType.text,
                            onChanged: onSearch,
                          ),
                  ),
                )
              : tabfilter ?? SizedBox(),
        ],
      ),
    );
  }
}
