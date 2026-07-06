import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import '../button/app_button.dart';
import '../../../theme/app_scale.dart';
import '../theme/app_empty_theme.dart';

class AppEmptyState extends StatelessWidget {
  const AppEmptyState({
    super.key,
    this.illustration,
    this.title,
    this.message,
    this.actionLabel,
    this.onAction,
    this.actionButton,
    this.isActionLoading = false,
    this.fillScreen = false,
    this.content,
    this.style,
    this.showDefaultIllustration = true,
  });

  factory AppEmptyState.screen({
    Key? key,
    Widget? illustration,
    String? title,
    String? message,
    String? actionLabel,
    VoidCallback? onAction,
    Widget? actionButton,
    bool isActionLoading = false,
    Widget? content,
    AppEmptyTheme? style,
    bool showDefaultIllustration = true,
  }) {
    return AppEmptyState(
      key: key,
      illustration: illustration,
      title: title,
      message: message,
      actionLabel: actionLabel,
      onAction: onAction,
      actionButton: actionButton,
      isActionLoading: isActionLoading,
      fillScreen: true,
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
  final bool fillScreen;
  final Widget? content;
  final AppEmptyTheme? style;
  final bool showDefaultIllustration;

  bool get _hasIllustration => illustration != null || showDefaultIllustration;

  bool get _hasAction =>
      actionButton != null || (actionLabel != null && actionLabel!.isNotEmpty && onAction != null);

  @override
  Widget build(BuildContext context) {
    final theme = style ?? AppEmptyTheme.of(context);

    final body = ConstrainedBox(
      constraints: BoxConstraints(maxWidth: theme.maxWidth),
      child: Padding(
        padding: theme.padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (_hasIllustration) ...[
              SizedBox(
                height: theme.illustrationHeight,
                child: illustration ?? _DefaultEmptyIllustration(color: theme.illustrationColor),
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
              SizedBox(height: size(6)),
            ],
            if (message != null && message!.isNotEmpty) ...[
              Text(
                message!,
                style: theme.messageStyle,
                textAlign: TextAlign.center,
                maxLines: 4,
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
                    label: actionLabel ?? '',
                    expand: false,
                  ),
          ],
        ),
      ),
    );

    if (!fillScreen) return Center(child: body);

    return ColoredBox(
      color: Colors.transparent,
      child: SafeArea(child: Center(child: body)),
    );
  }
}

class _DefaultEmptyIllustration extends StatelessWidget {
  const _DefaultEmptyIllustration({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size(120), size(100)),
      painter: _InboxIllustrationPainter(color: color),
    );
  }
}

class _InboxIllustrationPainter extends CustomPainter {
  _InboxIllustrationPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final stroke = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.04
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final fill = Paint()
      ..color = color.withValues(alpha: 0.08)
      ..style = PaintingStyle.fill;

    final w = size.width;
    final h = size.height;
    final box = RRect.fromRectAndRadius(
      Rect.fromLTWH(w * 0.18, h * 0.22, w * 0.64, h * 0.52),
      Radius.circular(w * 0.06),
    );
    canvas.drawRRect(box, fill);
    canvas.drawRRect(box, stroke);

    // Lid
    final lidPath = Path()
      ..moveTo(w * 0.18, h * 0.35)
      ..lineTo(w * 0.5, h * 0.2)
      ..lineTo(w * 0.82, h * 0.35);
    canvas.drawPath(lidPath, stroke);

    // Dash line inside
    canvas.drawLine(Offset(w * 0.32, h * 0.55), Offset(w * 0.68, h * 0.55), stroke);
  }

  @override
  bool shouldRepaint(covariant _InboxIllustrationPainter oldDelegate) => oldDelegate.color != color;
}
