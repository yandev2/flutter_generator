import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import '../theme/app_button_theme.dart';

/// Tombol scalable — custom warna, ikon leading/trailing, dan state loading.
class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.enabled = true,
    this.variant = AppButtonVariant.primary,
    this.leadingIcon,
    this.trailingIcon,
    this.leading,
    this.trailing,
    this.backgroundColor,
    this.foregroundColor,
    this.borderColor,
    this.textStyle,
    this.iconSize,
    this.padding,
    this.expand = true,
    this.style,
    this.loadingLabel,
    this.hideTrailingWhenLoading = true,
  });

  /// Tombol utama (filled) — setara mockup "Get started".
  const AppButton.primary({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.enabled = true,
    this.leadingIcon,
    this.trailingIcon,
    this.leading,
    this.trailing,
    this.backgroundColor,
    this.foregroundColor,
    this.borderColor,
    this.textStyle,
    this.iconSize,
    this.padding,
    this.expand = true,
    this.style,
    this.loadingLabel,
    this.hideTrailingWhenLoading = true,
  }) : variant = AppButtonVariant.primary;

  /// Tombol sekunder (surface + border + shadow) — setara mockup "Create".
  const AppButton.secondary({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.enabled = true,
    this.leadingIcon,
    this.trailingIcon,
    this.leading,
    this.trailing,
    this.backgroundColor,
    this.foregroundColor,
    this.borderColor,
    this.textStyle,
    this.iconSize,
    this.padding,
    this.expand = true,
    this.style,
    this.loadingLabel,
    this.hideTrailingWhenLoading = true,
  }) : variant = AppButtonVariant.secondary;

  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool enabled;
  final AppButtonVariant variant;
  final HeroIcons? leadingIcon;
  final HeroIcons? trailingIcon;
  final Widget? leading;
  final Widget? trailing;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? borderColor;
  final TextStyle? textStyle;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;
  final bool expand;
  final AppButtonTheme? style;
  final String? loadingLabel;
  final bool hideTrailingWhenLoading;

  bool get _isInteractive => enabled && !isLoading && onPressed != null;

  @override
  Widget build(BuildContext context) {
    final theme = style ?? AppButtonTheme.of(context);
    final preset = theme.colorsFor(variant);

    final bg = backgroundColor ?? preset.background;
    final fg = foregroundColor ?? preset.foreground;
    final border = borderColor ?? preset.border;
    final resolvedIconSize = iconSize ?? theme.iconSize;
    final resolvedPadding = padding ?? theme.padding;
    final labelTextStyle = (textStyle ?? theme.labelStyle).copyWith(color: fg);

    final showTrailing =
        trailing != null || (trailingIcon != null && !(isLoading && hideTrailingWhenLoading));

    final child = Row(
      mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isLoading) ...[
          _LoadingIndicator(color: fg, size: theme.loadingIndicatorSize),
          SizedBox(width: theme.iconGap),
        ] else if (leading != null) ...[
          leading!,
          SizedBox(width: theme.iconGap),
        ] else if (leadingIcon != null) ...[
          HeroIcon(leadingIcon!, size: resolvedIconSize, color: fg),
          SizedBox(width: theme.iconGap),
        ],
        Flexible(
          fit: expand ? FlexFit.loose : FlexFit.loose,
          child: Text(
            isLoading ? (loadingLabel ?? label) : label,
            style: labelTextStyle,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        if (showTrailing) ...[
          SizedBox(width: theme.iconGap),
          if (trailing != null)
            trailing!
          else if (trailingIcon != null)
            HeroIcon(trailingIcon!, size: resolvedIconSize, color: fg),
        ],
      ],
    );

    final button = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(theme.borderRadius),
        boxShadow: _isInteractive ? preset.shadow : null,
      ),
      child: Material(
        color: bg,
        borderRadius: BorderRadius.circular(theme.borderRadius),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: _isInteractive ? onPressed : null,
          borderRadius: BorderRadius.circular(theme.borderRadius),
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          splashColor: fg.withValues(alpha: 0.12),
          highlightColor: fg.withValues(alpha: 0.08),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(theme.borderRadius),
              border: border == Colors.transparent ? null : Border.all(color: border, width: 1),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: theme.minHeight),
              child: Padding(
                padding: resolvedPadding,
                child: Center(child: child),
              ),
            ),
          ),
        ),
      ),
    );

    return Opacity(
      opacity: _isInteractive ? 1 : theme.disabledOpacity,
      child: expand ? SizedBox(width: double.infinity, child: button) : button,
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator({required this.color, required this.size});

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(
        strokeWidth: size * 0.12,
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
}
