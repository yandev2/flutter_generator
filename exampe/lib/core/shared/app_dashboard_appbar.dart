import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import '../../theme/app_scale.dart';
import '../../theme/theme_manager.dart';

class AppDashboardAppBar extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? avatarUrl;
  final Widget? trailingWidget;

  const AppDashboardAppBar({
    super.key,
    required this.title,
    required this.subtitle,
    this.avatarUrl,
    this.trailingWidget,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverAppBar(
      floating: true,
      backgroundColor: theme.scaffoldBackgroundColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: size(80),
      titleSpacing: 0,
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: size(16).toInt().toDouble(), vertical: size(10)),
        child: Row(
          children: [
            // Avatar
            Container(
              width: size(48),
              height: size(48),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: theme.primaryColor.withAlpha(26),
                image: avatarUrl != null
                    ? DecorationImage(image: NetworkImage(avatarUrl!), fit: BoxFit.cover)
                    : null,
              ),
              child: avatarUrl == null ? HeroIcon(HeroIcons.user, color: theme.primaryColor) : null,
            ),
            SizedBox(width: size(12)),
            // Title & Subtitle
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleSmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: size(4)),
                  Text(
                    subtitle,
                    style: theme.textTheme.labelMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            // Actions
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Theme Toggle Button
                _buildActionButton(
                  context: context,
                  icon: isDark.isFalse ? HeroIcons.sun : HeroIcons.moon,
                  onTap: () => Get.find<ThemeManager>().switchTheme(),
                ),
                if (trailingWidget != null) ...[SizedBox(width: size(12)), trailingWidget!],
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required BuildContext context,
    required HeroIcons icon,
    required VoidCallback onTap,
  }) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(size(10)),
        decoration: BoxDecoration(shape: BoxShape.circle, color: theme.primaryColor.withAlpha(13)),
        child: HeroIcon(icon, size: 24, color: theme.iconTheme.color ?? Colors.black87),
      ),
    );
  }
}
