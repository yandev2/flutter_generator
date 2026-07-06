import 'package:flutter/material.dart';

import '../../../theme/app_scale.dart';
import '../theme/app_switch_theme.dart';

class AppSwitch extends StatelessWidget {
  const AppSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.title,
    this.description,
    this.enabled = true,
    this.controlPosition = AppSwitchControlPosition.end,
    this.activeColor,
    this.errorText,
    this.style,
    this.leading,
    this.trailing,
  });

  final bool value;
  final ValueChanged<bool>? onChanged;
  final String? title;
  final String? description;
  final bool enabled;
  final AppSwitchControlPosition controlPosition;
  final Color? activeColor;
  final String? errorText;
  final AppSwitchTheme? style;
  final Widget? leading;
  final Widget? trailing;

  bool get _hasTitle => title != null && title!.isNotEmpty;
  bool get _hasDescription => description != null && description!.isNotEmpty;
  bool get _hasError => errorText != null && errorText!.isNotEmpty;
  bool get _isInteractive => enabled && onChanged != null;

  @override
  Widget build(BuildContext context) {
    final theme = style ?? AppSwitchTheme.of(context);
    final accent = activeColor ?? theme.activeColor;

    final control = _SwitchControl(
      theme: theme,
      accent: accent,
      value: value,
      enabled: _isInteractive,
      onChanged: _isInteractive ? (v) => onChanged!(v) : null,
    );

    final textBlock = (_hasTitle || _hasDescription)
        ? Expanded(
            child: GestureDetector(
              onTap: _isInteractive ? () => onChanged!(!value) : null,
              behavior: HitTestBehavior.opaque,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (_hasTitle)
                    Text(
                      title!,
                      style: theme.titleStyle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  if (_hasDescription) ...[
                    if (_hasTitle) SizedBox(height: theme.titleDescGap),
                    Text(
                      description!,
                      style: theme.descriptionStyle,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ],
              ),
            ),
          )
        : null;

    return Opacity(
      opacity: enabled ? 1 : theme.disabledOpacity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Semantics(
            toggled: value,
            enabled: _isInteractive,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (leading != null) ...[leading!, SizedBox(width: theme.gap)],
                if (controlPosition == AppSwitchControlPosition.start) ...[
                  control,
                  if (textBlock != null) SizedBox(width: theme.gap),
                ],
                ?textBlock,
                if (controlPosition == AppSwitchControlPosition.end) ...[
                  if (textBlock != null) SizedBox(width: theme.gap),
                  control,
                ],
                if (trailing != null) ...[
                  SizedBox(width: theme.gap),
                  trailing!,
                ],
              ],
            ),
          ),
          if (_hasError) ...[
            SizedBox(height: size(6)),
            Text(errorText!, style: theme.errorStyle),
          ],
        ],
      ),
    );
  }
}

class _SwitchControl extends StatelessWidget {
  const _SwitchControl({
    required this.theme,
    required this.accent,
    required this.value,
    required this.enabled,
    this.onChanged,
  });

  final AppSwitchTheme theme;
  final Color accent;
  final bool value;
  final bool enabled;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ? () => onChanged?.call(!value) : null,
      child: AnimatedContainer(
        duration: theme.animationDuration,
        curve: Curves.easeOutCubic,
        width: theme.trackWidth,
        height: theme.trackHeight,
        decoration: BoxDecoration(
          color: value
              ? accent.withValues(alpha: 0.35)
              : theme.inactiveTrackColor,
          borderRadius: BorderRadius.circular(theme.trackHeight / 2),
        ),
        child: AnimatedAlign(
          duration: theme.animationDuration,
          curve: Curves.easeOutCubic,
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(theme.trackPadding),
            child: Container(
              width: theme.thumbSize,
              height: theme.thumbSize,
              decoration: BoxDecoration(
                color: value ? accent : theme.inactiveThumbColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.12),
                    blurRadius: size(4),
                    offset: Offset(0, size(2)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
