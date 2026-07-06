import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import '../button/app_button.dart';
import '../../../theme/app_scale.dart';
import '../theme/app_error_theme.dart';

class AppErrorView extends StatelessWidget {
  const AppErrorView({
    super.key,
    this.illustration,
    this.title,
    this.message,
    this.actionLabel,
    this.onAction,
    this.actionButton,
    this.isActionLoading = false,
    this.actionBackgroundColor,
    this.fillScreen = false,
    this.screenBackgroundColor,
    this.cardBackgroundColor,
    this.cardShadow,
    this.content,
    this.style,
    this.showDefaultIllustration = true,
  });

  /// Layar penuh dengan background warna + kartu center.
  factory AppErrorView.screen({
    Key? key,
    Widget? illustration,
    String? title,
    String? message,
    String? actionLabel,
    VoidCallback? onAction,
    Widget? actionButton,
    bool isActionLoading = false,
    Color? actionBackgroundColor,
    Color? screenBackgroundColor,
    Color? cardBackgroundColor,
    List<BoxShadow>? cardShadow,
    Widget? content,
    AppErrorTheme? style,
    bool showDefaultIllustration = true,
  }) {
    return AppErrorView(
      key: key,
      illustration: illustration,
      title: title,
      message: message,
      actionLabel: actionLabel,
      onAction: onAction,
      actionButton: actionButton,
      isActionLoading: isActionLoading,
      actionBackgroundColor: actionBackgroundColor,
      fillScreen: true,
      screenBackgroundColor: screenBackgroundColor,
      cardBackgroundColor: cardBackgroundColor,
      cardShadow: cardShadow,
      content: content,
      style: style,
      showDefaultIllustration: showDefaultIllustration,
    );
  }

  final Widget? illustration;
  final String? title;
  final String? message;
  final String? actionLabel;
  final VoidCallback? onAction;
  final Widget? actionButton;
  final bool isActionLoading;
  final Color? actionBackgroundColor;
  final bool fillScreen;
  final Color? screenBackgroundColor;
  final Color? cardBackgroundColor;
  final List<BoxShadow>? cardShadow;
  final Widget? content;
  final AppErrorTheme? style;
  final bool showDefaultIllustration;

  @override
  Widget build(BuildContext context) {
    final theme = style ?? AppErrorTheme.of(context);
    final card = _ErrorCard(
      theme: theme,
      illustration: illustration,
      showDefaultIllustration: showDefaultIllustration,
      title: title,
      message: message,
      content: content,
      actionButton: actionButton,
      actionLabel: actionLabel,
      onAction: onAction,
      isActionLoading: isActionLoading,
      actionBackgroundColor: actionBackgroundColor,
      cardBackgroundColor: cardBackgroundColor,
      cardShadow: cardShadow,
    );

    if (!fillScreen) return card;

    return ColoredBox(
      color: screenBackgroundColor ?? theme.screenBackgroundColor,
      child: SafeArea(
        child: Padding(
          padding: theme.screenPadding,
          child: Center(child: card),
        ),
      ),
    );
  }
}

class _ErrorCard extends StatelessWidget {
  const _ErrorCard({
    required this.theme,
    this.illustration,
    required this.showDefaultIllustration,
    this.title,
    this.message,
    this.content,
    this.actionButton,
    this.actionLabel,
    this.onAction,
    this.isActionLoading = false,
    this.actionBackgroundColor,
    this.cardBackgroundColor,
    this.cardShadow,
  });

  final AppErrorTheme theme;
  final Widget? illustration;
  final bool showDefaultIllustration;
  final String? title;
  final String? message;
  final Widget? content;
  final Widget? actionButton;
  final String? actionLabel;
  final VoidCallback? onAction;
  final bool isActionLoading;
  final Color? actionBackgroundColor;
  final Color? cardBackgroundColor;
  final List<BoxShadow>? cardShadow;

  bool get _hasIllustration => illustration != null || showDefaultIllustration;

  bool get _hasAction =>
      actionButton != null || (actionLabel != null && actionLabel!.isNotEmpty && onAction != null);

  @override
  Widget build(BuildContext context) {
    final actionBg = actionBackgroundColor ?? theme.screenBackgroundColor;

    return Container(
      constraints: BoxConstraints(maxWidth: size(360)),
      padding: theme.cardPadding,
      decoration: BoxDecoration(
        color: cardBackgroundColor ?? theme.cardColor,
        borderRadius: BorderRadius.circular(theme.cardBorderRadius),
        boxShadow: cardBackgroundColor == Colors.transparent
            ? []
            : (cardShadow ?? theme.cardShadow),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_hasIllustration) ...[
            SizedBox(
              height: theme.illustrationHeight,
              child: illustration ?? _DefaultErrorIllustration(color: theme.illustrationColor),
            ),
            SizedBox(height: theme.gap),
          ],
          if (title != null && title!.isNotEmpty) ...[
            Text(
              title!,
              style: theme.titleStyle,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: size(8)),
          ],
          if (message != null && message!.isNotEmpty) ...[
            Text(
              message!,
              style: theme.messageStyle,
              textAlign: TextAlign.center,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: theme.gap),
          ],
          if (content != null) ...[content!, SizedBox(height: theme.gap)],
          if (_hasAction)
            actionButton ??
                AppButton.secondary(
                  onPressed: onAction,
                  leadingIcon: HeroIcons.arrowPath,
                  backgroundColor: actionBg,
                  label: actionLabel ?? '',
                  expand: false,
                ),
        ],
      ),
    );
  }
}

/// Ilustrasi default — line-art sederhana (placeholder tanpa asset).
class _DefaultErrorIllustration extends StatelessWidget {
  const _DefaultErrorIllustration({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size(140), size(120)),
      painter: _ChestIllustrationPainter(color: color),
    );
  }
}

class _ChestIllustrationPainter extends CustomPainter {
  _ChestIllustrationPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final stroke = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.035
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final fill = Paint()
      ..color = color.withValues(alpha: 0.08)
      ..style = PaintingStyle.fill;

    final w = size.width;
    final h = size.height;
    final chestLeft = w * 0.28;
    final chestTop = h * 0.28;
    final chestW = w * 0.52;
    final chestH = h * 0.48;

    final chest = RRect.fromRectAndRadius(
      Rect.fromLTWH(chestLeft, chestTop, chestW, chestH),
      Radius.circular(w * 0.06),
    );
    canvas.drawRRect(chest, fill);
    canvas.drawRRect(chest, stroke);

    // Lid line
    canvas.drawLine(
      Offset(chestLeft, chestTop + chestH * 0.28),
      Offset(chestLeft + chestW, chestTop + chestH * 0.28),
      stroke,
    );

    // Strap
    canvas.drawLine(
      Offset(chestLeft - w * 0.18, chestTop + chestH * 0.5),
      Offset(chestLeft, chestTop + chestH * 0.38),
      stroke,
    );
    canvas.drawLine(
      Offset(chestLeft - w * 0.18, chestTop + chestH * 0.5),
      Offset(chestLeft - w * 0.18, chestTop + chestH * 0.72),
      stroke,
    );

    // Face
    final eyeY = chestTop + chestH * 0.52;
    final eyeR = w * 0.012;
    canvas.drawCircle(Offset(chestLeft + chestW * 0.38, eyeY), eyeR, stroke);
    canvas.drawCircle(Offset(chestLeft + chestW * 0.62, eyeY), eyeR, stroke);
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(chestLeft + chestW * 0.5, chestTop + chestH * 0.68),
        width: chestW * 0.2,
        height: chestH * 0.12,
      ),
      0.1,
      3.0,
      false,
      stroke,
    );
  }

  @override
  bool shouldRepaint(covariant _ChestIllustrationPainter oldDelegate) => oldDelegate.color != color;
}
