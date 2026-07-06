import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import '../../../theme/app_scale.dart';
import '../theme/app_checkbox_theme.dart';

/// Checkbox scalable — title & description opsional (auto-hidden jika null/kosong).
///
/// Dukungan [variant] `card` untuk opsi consent/premium dengan highlight saat terpilih.
class AppCheckbox extends StatelessWidget {
  const AppCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.title,
    this.description,
    this.enabled = true,
    this.variant = AppCheckboxVariant.plain,
    this.controlPosition = AppCheckboxControlPosition.start,
    this.tristate = false,
    this.activeColor,
    this.checkColor,
    this.errorText,
    this.style,
    this.leading,
    this.trailing,
    this.semanticLabel,
  });

  final bool? value;
  final ValueChanged<bool?>? onChanged;
  final String? title;
  final String? description;
  final bool enabled;
  final AppCheckboxVariant variant;
  final AppCheckboxControlPosition controlPosition;
  final bool tristate;

  /// Warna kotak saat tercentang / indeterminate.
  final Color? activeColor;
  final Color? checkColor;
  final String? errorText;
  final AppCheckboxTheme? style;
  final Widget? leading;
  final Widget? trailing;
  final String? semanticLabel;

  bool get _hasTitle => title != null && title!.isNotEmpty;
  bool get _hasDescription => description != null && description!.isNotEmpty;
  bool get _hasError => errorText != null && errorText!.isNotEmpty;
  bool get _isInteractive => enabled && onChanged != null;

  bool get _isChecked => value == true;
  bool get _isIndeterminate => value == null;

  void _handleTap() {
    if (!_isInteractive) return;
    if (tristate) {
      final next = switch (value) {
        null => true,
        true => false,
        false => null,
      };
      onChanged!(next);
    } else {
      onChanged!(!_isChecked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = style ?? AppCheckboxTheme.of(context);
    final accent = activeColor ?? theme.checkedColor;
    final mark = checkColor ?? theme.checkMarkColor;

    final content = _CheckboxRow(
      theme: theme,
      accent: accent,
      mark: mark,
      value: value,
      tristate: tristate,
      enabled: enabled,
      hasTitle: _hasTitle,
      hasDescription: _hasDescription,
      title: title,
      description: description,
      controlPosition: controlPosition,
      leading: leading,
      trailing: trailing,
      onTap: _handleTap,
      isInteractive: _isInteractive,
    );

    final labeled = Semantics(
      label: semanticLabel ?? title,
      checked: _isChecked,
      mixed: _isIndeterminate,
      enabled: _isInteractive,
      child: content,
    );

    final body = variant == AppCheckboxVariant.card
        ? _CardShell(
            theme: theme,
            accent: accent,
            selected: _isChecked || _isIndeterminate,
            enabled: enabled,
            onTap: _handleTap,
            child: labeled,
          )
        : labeled;

    return Opacity(
      opacity: enabled ? 1 : theme.disabledOpacity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          body,
          if (_hasError) ...[
            SizedBox(height: size(6)),
            Text(errorText!, style: theme.errorStyle),
          ],
        ],
      ),
    );
  }
}

class _CardShell extends StatelessWidget {
  const _CardShell({
    required this.theme,
    required this.accent,
    required this.selected,
    required this.enabled,
    required this.onTap,
    required this.child,
  });

  final AppCheckboxTheme theme;
  final Color accent;
  final bool selected;
  final bool enabled;
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: BorderRadius.circular(theme.cardBorderRadius),
        splashColor: accent.withValues(alpha: 0.08),
        highlightColor: accent.withValues(alpha: 0.05),
        child: AnimatedContainer(
          duration: theme.animationDuration,
          curve: Curves.easeOutCubic,
          padding: theme.cardPadding,
          decoration: BoxDecoration(
            color: selected
                ? theme.cardSelectedBackgroundColor
                : theme.uncheckedFillColor,
            borderRadius: BorderRadius.circular(theme.cardBorderRadius),
            border: Border.all(
              color: selected
                  ? theme.cardSelectedBorderColor
                  : theme.cardBorderColor,
              width: selected ? 1.5 : 1,
            ),
            boxShadow: selected ? null : theme.cardShadow,
          ),
          child: child,
        ),
      ),
    );
  }
}

class _CheckboxRow extends StatelessWidget {
  const _CheckboxRow({
    required this.theme,
    required this.accent,
    required this.mark,
    required this.value,
    required this.tristate,
    required this.enabled,
    required this.hasTitle,
    required this.hasDescription,
    required this.title,
    required this.description,
    required this.controlPosition,
    required this.onTap,
    required this.isInteractive,
    this.leading,
    this.trailing,
  });

  final AppCheckboxTheme theme;
  final Color accent;
  final Color mark;
  final bool? value;
  final bool tristate;
  final bool enabled;
  final bool hasTitle;
  final bool hasDescription;
  final String? title;
  final String? description;
  final AppCheckboxControlPosition controlPosition;
  final VoidCallback onTap;
  final bool isInteractive;
  final Widget? leading;
  final Widget? trailing;

  bool get _isChecked => value == true;
  bool get _isIndeterminate => value == null;

  @override
  Widget build(BuildContext context) {
    final control = _CheckboxControl(
      theme: theme,
      accent: accent,
      mark: mark,
      isChecked: _isChecked,
      isIndeterminate: _isIndeterminate,
      onTap: onTap,
      enabled: isInteractive,
    );

    final textBlock = (hasTitle || hasDescription)
        ? Expanded(
            child: GestureDetector(
              onTap: isInteractive ? onTap : null,
              behavior: HitTestBehavior.opaque,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (hasTitle)
                    Text(
                      title!,
                      style: theme.titleStyle,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  if (hasDescription) ...[
                    if (hasTitle) SizedBox(height: theme.titleDescGap),
                    Text(
                      description!,
                      style: theme.descriptionStyle,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ],
              ),
            ),
          )
        : null;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (leading != null) ...[leading!, SizedBox(width: theme.gap)],
        if (controlPosition == AppCheckboxControlPosition.start) ...[
          control,
          if (textBlock != null) SizedBox(width: theme.gap),
        ],
        ?textBlock,
        if (controlPosition == AppCheckboxControlPosition.end) ...[
          if (textBlock != null) SizedBox(width: theme.gap),
          control,
        ],
        if (trailing != null) ...[SizedBox(width: theme.gap), trailing!],
      ],
    );
  }
}

class _CheckboxControl extends StatelessWidget {
  const _CheckboxControl({
    required this.theme,
    required this.accent,
    required this.mark,
    required this.isChecked,
    required this.isIndeterminate,
    required this.onTap,
    required this.enabled,
  });

  final AppCheckboxTheme theme;
  final Color accent;
  final Color mark;
  final bool isChecked;
  final bool isIndeterminate;
  final VoidCallback onTap;
  final bool enabled;

  bool get _isActive => isChecked || isIndeterminate;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      enabled: enabled,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: enabled ? onTap : null,
          borderRadius: BorderRadius.circular(theme.borderRadius),
          splashColor: accent.withValues(alpha: 0.12),
          child: AnimatedContainer(
            duration: theme.animationDuration,
            curve: Curves.easeOutCubic,
            width: theme.boxSize,
            height: theme.boxSize,
            decoration: BoxDecoration(
              color: _isActive ? accent : theme.uncheckedFillColor,
              borderRadius: BorderRadius.circular(theme.borderRadius),
              border: Border.all(
                color: _isActive ? accent : theme.uncheckedBorderColor,
                width: theme.borderWidth,
              ),
              boxShadow: _isActive
                  ? [
                      BoxShadow(
                        color: accent.withValues(alpha: 0.28),
                        blurRadius: size(6),
                        offset: Offset(0, size(2)),
                      ),
                    ]
                  : null,
            ),
            child: Center(
              child: AnimatedSwitcher(
                duration: theme.animationDuration,
                switchInCurve: Curves.easeOutBack,
                switchOutCurve: Curves.easeIn,
                child: isIndeterminate
                    ? Container(
                        key: const ValueKey('indeterminate'),
                        width: size(10),
                        height: 2.5,
                        decoration: BoxDecoration(
                          color: mark,
                          borderRadius: BorderRadius.circular(size(2)),
                        ),
                      )
                    : isChecked
                    ? HeroIcon(
                        HeroIcons.check,
                        key: const ValueKey('check'),
                        size: theme.checkIconSize,
                        color: mark,
                      )
                    : const SizedBox.shrink(key: ValueKey('empty')),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
