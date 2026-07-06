import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../button/app_button.dart';
import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import '../image/app_image.dart';
import '../theme/card_profile_theme.dart';
import '../theme/ui_theme_helpers.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({
    super.key,
    required this.image,
    this.width,
    this.margin,
    this.onTap,
    this.avatarSize,
    this.name,
    this.email,
    this.badgeText,
    this.badgeIcon,
    this.onBadgeTap,
    this.badge,
    this.badgeBackgroundColor,
    this.badgeForegroundColor,
    this.content,
    this.style,
    this.isLoading,
  });

  /// Shortcut jika avatar berupa URL string.
  factory CardProfile.network({
    Key? key,
    required String imageUrl,
    double? avatarSize,
    double? width,
    EdgeInsetsGeometry? margin,
    VoidCallback? onTap,
    String? name,
    String? email,
    String? badgeText,
    HeroIcons? badgeIcon,
    VoidCallback? onBadgeTap,
    Widget? badge,
    Color? badgeBackgroundColor,
    Color? badgeForegroundColor,
    Widget? content,
    CardProfileTheme? style,
    bool? isLoading,
  }) {
    final avatar = avatarSize ?? size(80);

    return CardProfile(
      key: key,
      image: Skeleton.leaf(
        child: AppImage(imageUrl: imageUrl, width: avatar, height: avatar, fit: BoxFit.cover),
      ),
      avatarSize: avatar,
      width: width,
      margin: margin,
      onTap: onTap,
      name: name,
      email: email,
      badgeText: badgeText,
      badgeIcon: badgeIcon,
      onBadgeTap: onBadgeTap,
      badge: badge,
      badgeBackgroundColor: badgeBackgroundColor,
      badgeForegroundColor: badgeForegroundColor,
      content: content,
      style: style,
      isLoading: isLoading,
    );
  }

  /// Avatar — **wajib**.
  final bool? isLoading;
  final Widget image;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final double? avatarSize;

  final String? name;
  final String? email;

  final String? badgeText;
  final HeroIcons? badgeIcon;
  final VoidCallback? onBadgeTap;
  final Widget? badge;
  final Color? badgeBackgroundColor;
  final Color? badgeForegroundColor;

  final Widget? content;
  final CardProfileTheme? style;

  bool get _hasBadge => badge != null || (badgeText != null && badgeText!.isNotEmpty);

  @override
  Widget build(BuildContext context) {
    final theme = style ?? CardProfileTheme.of(context);
    final avatar = avatarSize ?? theme.avatarSize;
    final badgeBg = badgeBackgroundColor ?? theme.badgeBackgroundColor;
    final badgeFg = badgeForegroundColor ?? theme.badgeForegroundColor;

    final card = Skeletonizer(
      enabled: isLoading ?? false,
      child: Container(
        width: width,
        margin: margin,
        padding: theme.padding,
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(theme.borderRadius),
          boxShadow: theme.shadow,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: UiThemeHelpers.avatarRingColor(context),
                  width: theme.avatarBorderWidth,
                ),
                boxShadow: UiThemeHelpers.elevationShadow(
                  context,
                  blur: 8,
                  offsetY: 2,
                  lightOpacity: 0.1,
                ),
              ),
              child: ClipOval(
                child: SizedBox(width: avatar, height: avatar, child: image),
              ),
            ),
            if (name != null && name!.isNotEmpty) ...[
              SizedBox(height: theme.gap),
              Text(
                name!,
                style: theme.nameStyle,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            if (email != null && email!.isNotEmpty) ...[
              SizedBox(height: size(4)),
              Text(
                email!,
                style: theme.emailStyle,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            if (content != null) ...[SizedBox(height: theme.gap), content!],
            if (_hasBadge) ...[
              SizedBox(height: theme.gap),
              badge ??
                  AppButton.primary(
                    backgroundColor: badgeBg,
                    foregroundColor: badgeFg,
                    onPressed: onBadgeTap ?? () {},
                    leadingIcon: HeroIcons.sparkles,
                    label: badgeText ?? '',
                    expand: false,
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
