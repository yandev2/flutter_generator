import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import '../image/app_image.dart';
import '../theme/card_style_3_theme.dart';

class CardStyle3 extends StatelessWidget {
  const CardStyle3({
    super.key,
    required this.image,
    this.width,
    this.margin,
    this.onTap,
    this.imageWidth,
    this.imageHeight,
    this.category,
    this.title,
    this.location,
    this.locationIcon,
    this.locationLeading,
    this.rating,
    this.reviewLabel,
    this.ratingIcon,
    this.ratingLeading,
    this.showRatingIcon = true,
    this.content,
    this.footer,
    this.style,
    this.isLoading,
  });

  /// Shortcut jika image berupa URL string.
  factory CardStyle3.network({
    Key? key,
    required String imageUrl,
    double? imageWidth,
    double? imageHeight,
    double? width,
    EdgeInsetsGeometry? margin,
    VoidCallback? onTap,
    String? category,
    String? title,
    String? location,
    HeroIcons? locationIcon,
    Widget? locationLeading,
    String? rating,
    String? reviewLabel,
    HeroIcons? ratingIcon,
    Widget? ratingLeading,
    bool showRatingIcon = true,
    Widget? content,
    Widget? footer,
    CardStyle3Theme? style,
    bool? isLoading,
  }) {
    final w = imageWidth ?? size(100);
    final h = imageHeight ?? size(100);

    return CardStyle3(
      key: key,
      image: Skeleton.leaf(
        child: AppImage(imageUrl: imageUrl, width: w, height: h, fit: BoxFit.cover),
      ),
      imageWidth: w,
      imageHeight: h,
      width: width,
      margin: margin,
      onTap: onTap,
      category: category,
      title: title,
      location: location,
      locationIcon: locationIcon,
      locationLeading: locationLeading,
      rating: rating,
      reviewLabel: reviewLabel,
      ratingIcon: ratingIcon,
      ratingLeading: ratingLeading,
      showRatingIcon: showRatingIcon,
      content: content,
      footer: footer,
      style: style,
      isLoading: isLoading,
    );
  }

  /// Image utama — **wajib**.
  final bool? isLoading;
  final Widget image;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final double? imageWidth;
  final double? imageHeight;

  final String? category;
  final String? title;
  final String? location;
  final HeroIcons? locationIcon;
  final Widget? locationLeading;
  final String? rating;
  final String? reviewLabel;
  final HeroIcons? ratingIcon;
  final Widget? ratingLeading;
  final bool showRatingIcon;

  final Widget? content;
  final Widget? footer;
  final CardStyle3Theme? style;

  bool get _hasLocation => locationLeading != null || (location != null && location!.isNotEmpty);

  bool get _hasRating =>
      ratingLeading != null ||
      (rating != null && rating!.isNotEmpty) ||
      (reviewLabel != null && reviewLabel!.isNotEmpty);

  @override
  Widget build(BuildContext context) {
    final theme = style ?? CardStyle3Theme.of(context);
    final imgW = imageWidth ?? theme.imageWidth;
    final imgH = imageHeight ?? theme.imageHeight;

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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(theme.imageRadius),
              child: SizedBox(width: imgW, height: imgH, child: image),
            ),
            SizedBox(width: size(10)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (category != null && category!.isNotEmpty) ...[
                    Text(
                      category!,
                      style: theme.categoryStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: theme.gap),
                  ],
                  if (title != null && title!.isNotEmpty) ...[
                    Text(
                      title!,
                      style: theme.titleStyle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: theme.gap),
                  ],
                  if (_hasLocation) ...[
                    _LocationRow(
                      location: location,
                      locationIcon: locationIcon,
                      locationLeading: locationLeading,
                      theme: theme,
                    ),
                    SizedBox(height: theme.gap),
                  ],
                  if (_hasRating)
                    _RatingRow(
                      rating: rating,
                      reviewLabel: reviewLabel,
                      ratingIcon: ratingIcon,
                      ratingLeading: ratingLeading,
                      showRatingIcon: showRatingIcon,
                      theme: theme,
                    ),
                  if (content != null) ...[SizedBox(height: theme.gap), content!],
                  if (footer != null) ...[SizedBox(height: theme.gap), footer!],
                ],
              ),
            ),
          ],
        ),
      ),
    );

    if (onTap == null) return card;

    return GestureDetector(onTap: onTap, behavior: HitTestBehavior.opaque, child: card);
  }
}

class _LocationRow extends StatelessWidget {
  const _LocationRow({required this.theme, this.location, this.locationIcon, this.locationLeading});

  final String? location;
  final HeroIcons? locationIcon;
  final Widget? locationLeading;
  final CardStyle3Theme theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (locationLeading != null) ...[locationLeading!, SizedBox(width: size(4))],
        if (location != null && location!.isNotEmpty) ...[
          Expanded(
            child: Text(
              location!,
              style: theme.metaStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ],
    );
  }
}

class _RatingRow extends StatelessWidget {
  const _RatingRow({
    required this.theme,
    this.rating,
    this.reviewLabel,
    this.ratingIcon,
    this.ratingLeading,
    this.showRatingIcon = true,
  });

  final String? rating;
  final String? reviewLabel;
  final HeroIcons? ratingIcon;
  final Widget? ratingLeading;
  final bool showRatingIcon;
  final CardStyle3Theme theme;

  String get _ratingText {
    if (rating != null && reviewLabel != null) {
      return '${rating!} (${reviewLabel!})';
    }
    return rating ?? reviewLabel ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (ratingLeading != null)
          ratingLeading!
        else if (showRatingIcon)
          HeroIcon(
            ratingIcon ?? HeroIcons.star,
            size: theme.iconSize,
            color: theme.ratingIconColor,
          ),
        if (_ratingText.isNotEmpty) ...[
          SizedBox(width: size(4)),
          Flexible(
            child: Text(
              _ratingText,
              style: theme.metaStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ],
    );
  }
}
