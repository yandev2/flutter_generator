import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';

import '../../../theme/app_scale.dart';
import '../../utils/style.dart';

class AppBottomNavItem {
  final String label;
  final HeroIcons icon;

  AppBottomNavItem({required this.label, required this.icon});
}

class AppBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<AppBottomNavItem> items;

  const AppBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size(16).toInt().toDouble(), vertical: size(10)),
      decoration: BoxDecoration(
        color: Get.theme.cardColor,
        boxShadow: [boxShadow],
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(items.length, (index) {
            final item = items[index];
            final isSelected = currentIndex == index;
            final theme = Theme.of(context);

            return Expanded(
              child: GestureDetector(
                onTap: () => onTap(index),
                behavior: HitTestBehavior.opaque,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Icon
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder: (child, animation) {
                        return ScaleTransition(scale: animation, child: child);
                      },
                      child: HeroIcon(
                        item.icon,
                        key: ValueKey<bool>(isSelected),
                        style: isSelected ? HeroIconStyle.solid : HeroIconStyle.outline,
                        color: isSelected ? theme.primaryColor : Colors.grey.shade500,
                        size: 24,
                      ),
                    ),
                    SizedBox(height: size(4)),
                    // Text Label
                    AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 300),
                      style: Get.theme.textTheme.labelMedium!.copyWith(
                        color: isSelected
                            ? theme.primaryColor
                            : Get.theme.textTheme.labelMedium!.color,
                        fontWeight: isSelected ? FontWeight.w500 : FontWeight.w400,
                      ),
                      child: Text(item.label),
                    ),
                    SizedBox(height: size(6)),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOutCubic,
                      height: 3,
                      width: isSelected ? 30 : 0,
                      decoration: BoxDecoration(
                        color: isSelected ? theme.primaryColor : Colors.transparent,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
