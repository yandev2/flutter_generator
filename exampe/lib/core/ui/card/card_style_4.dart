import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../button/app_button.dart';
import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import '../image/app_image.dart';
import '../theme/card_style_4_theme.dart';

class CardStyle4 extends StatelessWidget {
  const CardStyle4({
    super.key,
    required this.image,
    this.width,
    this.margin,
    this.onTap,
    this.imageWidth,
    this.imageHeight,
    this.referenceId,
    this.status,
    this.statusLabel,
    this.statusColor,
    this.statusBackgroundColor,
    this.statusBorderColor,
    this.title,
    this.location,
    this.locationIcon,
    this.locationLeading,
    this.checkInLabel,
    this.checkInDate,
    this.checkOutLabel,
    this.checkOutDate,
    this.actionLabel,
    this.onAction,
    this.actionButton,
    this.isActionLoading = false,
    this.actionBackgroundColor,
    this.content,
    this.footer,
    this.style,
    this.showDivider = true,
    this.isLoading,
  });

  /// Shortcut jika image berupa URL string.
  factory CardStyle4.network({
    Key? key,
    required String imageUrl,
    double? imageWidth,
    double? imageHeight,
    double? width,
    EdgeInsetsGeometry? margin,
    VoidCallback? onTap,
    String? referenceId,
    CardStyle4Status? status,
    String? statusLabel,
    Color? statusColor,
    Color? statusBackgroundColor,
    Color? statusBorderColor,
    String? title,
    String? location,
    HeroIcons? locationIcon,
    Widget? locationLeading,
    String? checkInLabel,
    String? checkInDate,
    String? checkOutLabel,
    String? checkOutDate,
    String? actionLabel,
    VoidCallback? onAction,
    Widget? actionButton,
    bool isActionLoading = false,
    Color? actionBackgroundColor,
    Widget? content,
    Widget? footer,
    CardStyle4Theme? style,
    bool showDivider = true,
    bool? isLoading,
  }) {
    final w = imageWidth ?? size(88);
    final h = imageHeight ?? size(88);

    return CardStyle4(
      key: key,
      image: Skeleton.leaf(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(size(16)),
          child: AppImage(imageUrl: imageUrl, width: w, height: h, fit: BoxFit.cover),
        ),
      ),
      imageWidth: w,
      imageHeight: h,
      width: width,
      margin: margin,
      onTap: onTap,
      referenceId: referenceId,
      status: status,
      statusLabel: statusLabel,
      statusColor: statusColor,
      statusBackgroundColor: statusBackgroundColor,
      statusBorderColor: statusBorderColor,
      title: title,
      location: location,
      locationIcon: locationIcon,
      locationLeading: locationLeading,
      checkInLabel: checkInLabel,
      checkInDate: checkInDate,
      checkOutLabel: checkOutLabel,
      checkOutDate: checkOutDate,
      actionLabel: actionLabel,
      onAction: onAction,
      actionButton: actionButton,
      isActionLoading: isActionLoading,
      actionBackgroundColor: actionBackgroundColor,
      content: content,
      footer: footer,
      style: style,
      showDivider: showDivider,
      isLoading: isLoading,
    );
  }

  /// Image utama — **wajib**.
  ///
  final bool? isLoading;
  final Widget image;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final double? imageWidth;
  final double? imageHeight;

  /// Header — ID kiri, badge status kanan.
  final String? referenceId;
  final CardStyle4Status? status;
  final String? statusLabel;
  final Color? statusColor;
  final Color? statusBackgroundColor;
  final Color? statusBorderColor;

  /// Body — info di kanan image.
  final String? title;
  final String? location;
  final HeroIcons? locationIcon;
  final Widget? locationLeading;
  final String? checkInLabel;
  final String? checkInDate;
  final String? checkOutLabel;
  final String? checkOutDate;

  /// Footer — [AppButton] atau widget kustom.
  final String? actionLabel;
  final VoidCallback? onAction;
  final Widget? actionButton;
  final bool isActionLoading;
  final Color? actionBackgroundColor;

  final Widget? content;
  final Widget? footer;
  final CardStyle4Theme? style;
  final bool showDivider;

  bool get _hasHeader => (referenceId != null && referenceId!.isNotEmpty) || _hasStatus;

  bool get _hasStatus => status != null || (statusLabel != null && statusLabel!.isNotEmpty);

  bool get _hasLocation => locationLeading != null || (location != null && location!.isNotEmpty);

  bool get _hasCheckIn => checkInDate != null && checkInDate!.isNotEmpty;

  bool get _hasCheckOut => checkOutDate != null && checkOutDate!.isNotEmpty;

  bool get _hasDateRow => _hasCheckIn || _hasCheckOut;

  bool get _hasBody =>
      (title != null && title!.isNotEmpty) || _hasLocation || _hasDateRow || content != null;

  bool get _hasAction => actionButton != null || (actionLabel != null && actionLabel!.isNotEmpty);

  bool get _hasFooter => footer != null || _hasAction;

  @override
  Widget build(BuildContext context) {
    final theme = style ?? CardStyle4Theme.of(context);
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (_hasHeader) ...[
              _HeaderRow(
                referenceId: referenceId,
                status: status,
                statusLabel: statusLabel,
                statusColor: statusColor,
                statusBackgroundColor: statusBackgroundColor,
                statusBorderColor: statusBorderColor,
                theme: theme,
                isLoading: isLoading ?? false,
              ),
              SizedBox(height: theme.sectionGap),
              if (showDivider && (_hasBody || _hasFooter)) ...[
                Divider(height: 1, color: theme.dividerColor),
                SizedBox(height: theme.sectionGap),
              ],
            ],
            if (_hasBody) ...[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(theme.imageRadius),
                    child: SizedBox(width: imgW, height: imgH, child: image),
                  ),
                  SizedBox(width: size(12)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                            isLoading: isLoading ?? false,
                          ),
                          SizedBox(height: theme.gap),
                        ],
                        if (_hasDateRow)
                          _DateRow(
                            checkInLabel: checkInLabel ?? 'Check in',
                            checkInDate: checkInDate,
                            checkOutLabel: checkOutLabel ?? 'Check Out',
                            checkOutDate: checkOutDate,
                            theme: theme,
                            isLoading: isLoading ?? false,
                          ),
                        if (content != null) ...[SizedBox(height: theme.gap), content!],
                      ],
                    ),
                  ),
                ],
              ),
            ] else ...[
              // Image wajib — tampilkan meski tidak ada teks body lain.
              SizedBox(height: _hasHeader ? theme.sectionGap : 0),
              ClipRRect(
                borderRadius: BorderRadius.circular(theme.imageRadius),
                child: SizedBox(width: imgW, height: imgH, child: image),
              ),
            ],
            if (_hasFooter) ...[
              SizedBox(height: theme.sectionGap),
              footer ??
                  Wrap(
                    alignment: WrapAlignment.end,
                    spacing: size(8),
                    runSpacing: size(8),
                    children: [
                      if (actionButton != null)
                        actionButton!
                      else if (actionLabel != null && actionLabel!.isNotEmpty)
                        AppButton.secondary(
                          backgroundColor: actionBackgroundColor ?? AppColors.blue,
                          onPressed: onAction,
                          label: actionLabel ?? 'Secondary',
                          expand: false,
                        ),
                    ],
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

class _HeaderRow extends StatelessWidget {
  const _HeaderRow({
    required this.theme,
    this.referenceId,
    this.status,
    this.statusLabel,
    this.statusColor,
    this.statusBackgroundColor,
    this.statusBorderColor,
    required this.isLoading,
  });

  final String? referenceId;
  final CardStyle4Status? status;
  final String? statusLabel;
  final Color? statusColor;
  final Color? statusBackgroundColor;
  final Color? statusBorderColor;
  final CardStyle4Theme theme;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final label = status?.label ?? statusLabel;
    final color = status?.color ?? statusColor ?? AppColors.red;
    final bg = status?.bg ?? statusBackgroundColor ?? color.withValues(alpha: 0.12);
    final border = status?.border ?? statusBorderColor ?? color.withValues(alpha: 0.5);

    return Row(
      children: [
        if (referenceId != null && referenceId!.isNotEmpty)
          Expanded(
            child: Text(
              referenceId!,
              style: theme.referenceStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        if (label != null && label.isNotEmpty)
          Skeleton.leaf(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: size(10), vertical: size(4)),
              decoration: BoxDecoration(
                color: bg,
                borderRadius: BorderRadius.circular(theme.statusRadius),
                border: Border.all(color: border),
              ),
              child: Text(
                label,
                style: theme.statusStyle.copyWith(color: color),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
      ],
    );
  }
}

class _LocationRow extends StatelessWidget {
  const _LocationRow({
    required this.theme,
    this.location,
    this.locationIcon,
    this.locationLeading,
    required this.isLoading,
  });

  final String? location;
  final HeroIcons? locationIcon;
  final Widget? locationLeading;
  final CardStyle4Theme theme;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (locationLeading != null)
          locationLeading!
        else
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Skeleton.replace(
              width: theme.iconSize,
              height: theme.iconSize,
              child: HeroIcon(
                locationIcon ?? HeroIcons.mapPin,
                size: theme.iconSize,
                color: AppColors.textMuted,
              ),
            ),
          ),
        if (location != null && location!.isNotEmpty) ...[
          SizedBox(width: size(4)),
          Expanded(
            child: Text(
              location!,
              style: theme.metaStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ],
    );
  }
}

class _DateRow extends StatelessWidget {
  const _DateRow({
    required this.theme,
    required this.checkInLabel,
    this.checkInDate,
    required this.checkOutLabel,
    this.checkOutDate,
    required this.isLoading,
  });

  final String checkInLabel;
  final String? checkInDate;
  final String checkOutLabel;
  final String? checkOutDate;
  final CardStyle4Theme theme;
  final bool isLoading;

  bool get _hasCheckIn => (checkInDate != null && checkInDate!.isNotEmpty);

  bool get _hasCheckOut => (checkOutDate != null && checkOutDate!.isNotEmpty);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (_hasCheckIn)
          Expanded(
            child: _DateColumn(label: checkInLabel, value: checkInDate!, theme: theme),
          ),
        if (_hasCheckIn && _hasCheckOut) SizedBox(width: size(12)),
        if (_hasCheckOut)
          Expanded(
            child: _DateColumn(label: checkOutLabel, value: checkOutDate!, theme: theme),
          ),
      ],
    );
  }
}

class _DateColumn extends StatelessWidget {
  const _DateColumn({required this.label, required this.value, required this.theme});

  final String label;
  final String value;
  final CardStyle4Theme theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: theme.dateLabelStyle, maxLines: 1, overflow: TextOverflow.ellipsis),
        SizedBox(height: size(2)),
        Text(value, style: theme.dateValueStyle, maxLines: 2, overflow: TextOverflow.ellipsis),
      ],
    );
  }
}
