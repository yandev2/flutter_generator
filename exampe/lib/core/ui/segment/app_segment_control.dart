import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import '../../../theme/app_scale.dart';
import '../theme/app_segment_theme.dart';

/// Satu segmen dalam [AppSegmentControl].
class AppSegmentOption<T> {
  const AppSegmentOption({
    required this.value,
    required this.label,
    this.icon,
    this.enabled = true,
  });

  final T value;
  final String label;
  final HeroIcons? icon;
  final bool enabled;
}

/// Segmented control — pilihan tunggal dalam track pill (Uang/Natura, dll.).
class AppSegmentControl<T> extends StatelessWidget {
  const AppSegmentControl({
    super.key,
    required this.value,
    required this.onChanged,
    required this.options,
    this.enabled = true,
    this.expand = true,
    this.style,
  });

  final T value;
  final ValueChanged<T>? onChanged;
  final List<AppSegmentOption<T>> options;
  final bool enabled;
  final bool expand;
  final AppSegmentTheme? style;

  bool get _isInteractive => enabled && onChanged != null;

  @override
  Widget build(BuildContext context) {
    final theme = style ?? AppSegmentTheme.of(context);

    return Opacity(
      opacity: enabled ? 1 : 0.45,
      child: Container(
        padding: EdgeInsets.all(theme.trackPadding),
        decoration: BoxDecoration(
          color: theme.trackColor,
          borderRadius: BorderRadius.circular(theme.trackRadius),
          border: Border.all(color: theme.borderColor),
        ),
        child: Row(
          mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
          children: [
            for (var i = 0; i < options.length; i++) ...[
              if (i > 0) SizedBox(width: theme.trackPadding),
              if (expand)
                Expanded(
                  child: _SegmentItem<T>(
                    option: options[i],
                    selected: options[i].value == value,
                    enabled: _isInteractive && options[i].enabled,
                    theme: theme,
                    expand: expand,
                    onTap: _isInteractive && options[i].enabled
                        ? () => onChanged!(options[i].value)
                        : null,
                  ),
                )
              else
                _SegmentItem<T>(
                  option: options[i],
                  selected: options[i].value == value,
                  enabled: _isInteractive && options[i].enabled,
                  theme: theme,
                  expand: expand,
                  onTap: _isInteractive && options[i].enabled
                      ? () => onChanged!(options[i].value)
                      : null,
                ),
            ],
          ],
        ),
      ),
    );
  }
}

class _SegmentItem<T> extends StatelessWidget {
  const _SegmentItem({
    required this.option,
    required this.selected,
    required this.enabled,
    required this.theme,
    required this.expand,
    this.onTap,
  });

  final AppSegmentOption<T> option;
  final bool selected;
  final bool enabled;
  final AppSegmentTheme theme;
  final bool expand;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final fg = selected ? theme.selectedForeground : theme.unselectedForeground;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(theme.segmentRadius),
        splashColor: theme.selectedColor.withValues(alpha: 0.12),
        child: AnimatedContainer(
          duration: theme.animationDuration,
          curve: Curves.easeOutCubic,
          padding: theme.segmentPadding,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected
                ? theme.selectedColor
                : (theme.unselectedColor ?? Colors.transparent),
            borderRadius: BorderRadius.circular(theme.segmentRadius),
            border:
                (theme.unselectedBorderColor != null &&
                    theme.unselectedBorderColor != Colors.transparent)
                ? Border.all(
                    color: selected
                        ? Colors.transparent
                        : theme.unselectedBorderColor!,
                    width: 1,
                  )
                : null,
            boxShadow: selected
                ? [
                    BoxShadow(
                      color: theme.selectedColor.withValues(alpha: 0.25),
                      blurRadius: size(6),
                      offset: Offset(0, size(2)),
                    ),
                  ]
                : null,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (option.icon != null) ...[
                HeroIcon(option.icon!, size: theme.iconSize, color: fg),
                SizedBox(width: theme.iconGap),
              ],
              if (expand)
                Flexible(
                  child: Text(
                    option.label,
                    style:
                        (selected ? theme.selectedLabelStyle : theme.labelStyle)
                            .copyWith(color: fg),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              else
                Text(
                  option.label,
                  style:
                      (selected ? theme.selectedLabelStyle : theme.labelStyle)
                          .copyWith(color: fg),
                  textAlign: TextAlign.center,
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
