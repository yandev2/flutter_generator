import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import '../../../../theme/app_scale.dart';
import '../../../../theme/theme.dart';
import '../../theme/app_input_theme.dart';

enum InputAffixKind { icon, heroIcon, text, button, custom }

/// Slot modular untuk prefix/suffix pada [AppInput].
class InputAffix {
  const InputAffix._({
    required this.kind,
    this.icon,
    this.heroIcon,
    this.text,
    this.buttonLabel,
    this.buttonIcon,
    this.onTap,
    this.iconSize,
    this.iconColor,
    this.customWidget,
    this.showDivider = false,
  });

  factory InputAffix.icon(
    IconData icon, {
    VoidCallback? onTap,
    double? size,
    Color? color,
    bool showDivider = false,
  }) {
    return InputAffix._(
      kind: InputAffixKind.icon,
      icon: icon,
      onTap: onTap,
      iconSize: size,
      iconColor: color,
      showDivider: showDivider,
    );
  }

  factory InputAffix.heroIcon(
    HeroIcons icon, {
    VoidCallback? onTap,
    double? size,
    Color? color,
    bool showDivider = false,
  }) {
    return InputAffix._(
      kind: InputAffixKind.heroIcon,
      heroIcon: icon,
      onTap: onTap,
      iconSize: size,
      iconColor: color,
      showDivider: showDivider,
    );
  }

  factory InputAffix.text(String text, {bool showDivider = true}) {
    return InputAffix._(kind: InputAffixKind.text, text: text, showDivider: showDivider);
  }

  factory InputAffix.button({
    required String label,
    HeroIcons? icon,
    required VoidCallback onTap,
    bool showDivider = true,
  }) {
    return InputAffix._(
      kind: InputAffixKind.button,
      buttonLabel: label,
      buttonIcon: icon,
      onTap: onTap,
      showDivider: showDivider,
    );
  }

  factory InputAffix.custom(Widget widget, {bool showDivider = false}) {
    return InputAffix._(
      kind: InputAffixKind.custom,
      customWidget: widget,
      showDivider: showDivider,
    );
  }

  final InputAffixKind kind;
  final IconData? icon;
  final HeroIcons? heroIcon;
  final String? text;
  final String? buttonLabel;
  final HeroIcons? buttonIcon;
  final VoidCallback? onTap;
  final double? iconSize;
  final Color? iconColor;
  final Widget? customWidget;
  final bool showDivider;

  Widget build(
    BuildContext context,
    AppInputTheme theme, {
    required bool isFocused,
    required bool hasError,
    required bool enabled,
  }) {
    final defaultIconColor = hasError
        ? theme.errorBorderColor
        : isFocused
        ? theme.focusedBorderColor
        : AppColors.textMuted;

    Widget child;
    switch (kind) {
      case InputAffixKind.icon:
        child = Icon(icon, size: iconSize ?? size(18), color: iconColor ?? defaultIconColor);
      case InputAffixKind.heroIcon:
        child = HeroIcon(
          heroIcon!,
          size: iconSize ?? size(18),
          color: iconColor ?? defaultIconColor,
        );
      case InputAffixKind.text:
        child = Text(text!, style: theme.inputStyle.copyWith(color: AppColors.textMuted));
      case InputAffixKind.button:
        child = _AffixButton(
          label: buttonLabel!,
          icon: buttonIcon,
          onTap: onTap,
          theme: theme,
          enabled: enabled,
        );
      case InputAffixKind.custom:
        child = customWidget!;
    }

    final content = Padding(
      padding: EdgeInsets.symmetric(horizontal: size(10)),
      child: onTap != null && kind != InputAffixKind.button
          ? GestureDetector(onTap: enabled ? onTap : null, child: child)
          : child,
    );

    if (!showDivider) return content;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        content,
        _InputDivider(color: theme.dividerColor),
      ],
    );
  }
}

class _InputDivider extends StatelessWidget {
  const _InputDivider({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(width: 1, height: size(22), color: color);
  }
}

class _AffixButton extends StatelessWidget {
  const _AffixButton({
    required this.label,
    required this.icon,
    required this.onTap,
    required this.theme,
    required this.enabled,
  });

  final String label;
  final HeroIcons? icon;
  final VoidCallback? onTap;
  final AppInputTheme theme;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: BorderRadius.circular(size(6)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size(4), vertical: size(2)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                HeroIcon(icon!, size: size(14), color: theme.focusedBorderColor),
                SizedBox(width: size(4)),
              ],
              Text(
                label,
                style: theme.labelStyle.copyWith(
                  color: theme.focusedBorderColor,
                  fontSize: size(10),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
