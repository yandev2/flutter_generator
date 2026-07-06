import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import '../image/app_image.dart';
import '../theme/card_style_5_theme.dart';

class CardStyle5 extends StatelessWidget {
  const CardStyle5({
    super.key,
    required this.image,
    this.width,
    this.margin,
    this.onTap,
    this.avatarSize,
    this.title,
    this.subtitle,
    this.actionIcon,
    this.onAction,
    this.actionButton,
    this.actionBackgroundColor,
    this.actionIconColor,
    this.isActionLoading = false,
    this.isLoading = false,
    this.content,
    this.style,
  });

  factory CardStyle5.network({
    Key? key,
    required String imageUrl,
    double? avatarSize,
    double? width,
    EdgeInsetsGeometry? margin,
    VoidCallback? onTap,
    String? title,
    String? subtitle,
    HeroIcons? actionIcon,
    VoidCallback? onAction,
    Widget? actionButton,
    Color? actionBackgroundColor,
    Color? actionIconColor,
    bool isActionLoading = false,
    bool isLoading = false,
    Widget? content,
    CardStyle5Theme? style,
  }) {
    final avatar = avatarSize ?? size(48);

    return CardStyle5(
      key: key,
      image: ClipOval(
        child: AppImage(imageUrl: imageUrl, width: avatar, height: avatar, fit: BoxFit.cover),
      ),
      avatarSize: avatar,
      width: width,
      margin: margin,
      onTap: onTap,
      title: title,
      subtitle: subtitle,
      actionIcon: actionIcon,
      onAction: onAction,
      actionButton: actionButton,
      actionBackgroundColor: actionBackgroundColor,
      actionIconColor: actionIconColor,
      isActionLoading: isActionLoading,
      isLoading: isLoading,
      content: content,
      style: style,
    );
  }

  /// Avatar/image — **wajib** (disarankan lingkaran).
  final Widget image;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final double? avatarSize;

  final String? title;
  final String? subtitle;

  final HeroIcons? actionIcon;
  final VoidCallback? onAction;
  final Widget? actionButton;
  final Color? actionBackgroundColor;
  final Color? actionIconColor;
  final bool isActionLoading;
  final bool isLoading;

  final Widget? content;
  final CardStyle5Theme? style;

  bool get _hasAction => actionButton != null || (actionIcon != null && onAction != null);

  bool get _hasText =>
      (title != null && title!.isNotEmpty) ||
      (subtitle != null && subtitle!.isNotEmpty) ||
      content != null;

  @override
  Widget build(BuildContext context) {
    final theme = style ?? CardStyle5Theme.of(context);
    final avatar = avatarSize ?? theme.avatarSize;

    final card = Skeletonizer(
      enabled: isLoading,
      child: Container(
        width: width,
        margin: margin,
        padding: theme.padding,
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(theme.borderRadius),
          boxShadow: theme.shadow,
        ),
        child: Row(
          children: [
            SizedBox(
              width: avatar,
              height: avatar,
              child: Skeleton.replace(
                replacement: Bone(
                  width: avatar,
                  height: avatar,
                  borderRadius: BorderRadius.circular(size(10)),
                ),
                child: image,
              ),
            ),
            if (_hasText) ...[
              SizedBox(width: size(12)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (title != null && title!.isNotEmpty)
                      Text(
                        title!,
                        style: theme.titleStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    if (subtitle != null && subtitle!.isNotEmpty) ...[
                      if (title != null && title!.isNotEmpty) SizedBox(height: theme.gap),
                      Text(
                        subtitle!,
                        style: theme.subtitleStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                    if (content != null) ...[SizedBox(height: theme.gap), content!],
                  ],
                ),
              ),
            ] else
              const Spacer(),
            if (_hasAction) ...[
              SizedBox(width: size(8)),
              actionButton ??
                  _CircleActionButton(
                    icon: actionIcon!,
                    onPressed: isActionLoading ? null : onAction,
                    isLoading: isActionLoading,
                    size: theme.actionSize,
                    iconSize: theme.actionIconSize,
                    backgroundColor: actionBackgroundColor ?? theme.actionColor,
                    iconColor: actionIconColor ?? theme.actionIconColor,
                  ),
            ],
          ],
        ),
      ),
    );

    if (onTap == null) return card;

    return GestureDetector(onTap: onTap, behavior: HitTestBehavior.opaque, child: card);
  }
}

class _CircleActionButton extends StatelessWidget {
  const _CircleActionButton({
    required this.icon,
    required this.onPressed,
    required this.size,
    required this.iconSize,
    required this.backgroundColor,
    required this.iconColor,
    this.isLoading = false,
  });

  final HeroIcons icon;
  final VoidCallback? onPressed;
  final double size;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        customBorder: const CircleBorder(),
        child: SizedBox(
          width: size,
          height: size,
          child: Center(
            child: isLoading
                ? SizedBox(
                    width: iconSize,
                    height: iconSize,
                    child: CircularProgressIndicator(
                      strokeWidth: iconSize * 0.12,
                      valueColor: AlwaysStoppedAnimation<Color>(iconColor),
                    ),
                  )
                : HeroIcon(icon, size: iconSize, color: iconColor),
          ),
        ),
      ),
    );
  }
}
