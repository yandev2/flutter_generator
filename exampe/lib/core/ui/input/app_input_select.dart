import 'package:flutter/material.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import '../theme/app_input_theme.dart';
import 'parts/input_affix.dart';
import 'parts/input_helper_text.dart';
import 'app_input.dart';

/// Item dropdown dengan value dan label terpisah — untuk [AppInputSelectTyped].
class AppSelectItem<T> {
  const AppSelectItem({required this.value, required this.label});

  final T value;
  final String label;
}

/// Dropdown field — cukup kirim [items] sebagai `List<String>`.
class AppInputSelect extends StatefulWidget {
  const AppInputSelect({
    super.key,
    required this.items,
    this.value,
    this.onChanged,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.enabled = true,
    this.prefix,
    this.suffix,
    this.style,
    this.focusNode,
    this.isExpanded = true,
  });

  final List<String> items;
  final String? value;
  final ValueChanged<String?>? onChanged;
  final FocusNode? focusNode;
  final String? label;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final bool enabled;
  final InputAffix? prefix;
  final InputAffix? suffix;
  final AppInputTheme? style;
  final bool isExpanded;

  @override
  State<AppInputSelect> createState() => _AppInputSelectState();
}

class _AppInputSelectState extends State<AppInputSelect> {
  late FocusNode _focusNode;
  late bool _ownsFocusNode;

  bool get _hasError => widget.errorText != null && widget.errorText!.isNotEmpty;

  String? get _effectiveValue {
    if (widget.value == null) return null;
    return widget.items.contains(widget.value) ? widget.value : null;
  }

  @override
  void initState() {
    super.initState();
    _ownsFocusNode = widget.focusNode == null;
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() => setState(() {});

  @override
  void didUpdateWidget(covariant AppInputSelect oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.focusNode != oldWidget.focusNode) {
      _focusNode.removeListener(_onFocusChange);
      if (_ownsFocusNode) _focusNode.dispose();
      _ownsFocusNode = widget.focusNode == null;
      _focusNode = widget.focusNode ?? FocusNode();
      _focusNode.addListener(_onFocusChange);
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    if (_ownsFocusNode) _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = widget.style ?? AppInputTheme.of(context);
    final isFocused = _focusNode.hasFocus;

    return Opacity(
      opacity: widget.enabled ? 1 : theme.disabledOpacity,
      child: AbsorbPointer(
        absorbing: !widget.enabled,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.label != null) ...[
              Text(widget.label!, style: theme.labelStyle),
              SizedBox(height: size(7)),
            ],
            AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              decoration: BoxDecoration(
                color: theme.fillColor,
                borderRadius: BorderRadius.circular(theme.borderRadius),
                border: Border.all(
                  color: _hasError
                      ? theme.errorBorderColor
                      : isFocused
                      ? theme.focusedBorderColor
                      : theme.defaultBorderColor,
                  width: isFocused && !_hasError
                      ? theme.focusedBorderWidth
                      : theme.borderWidth,
                ),
                boxShadow: isFocused && !_hasError ? theme.focusShadow : null,
              ),
              child: Row(
                children: [
                  if (widget.prefix != null)
                    Padding(
                      padding: EdgeInsets.only(left: size(6)),
                      child: widget.prefix!.build(
                        context,
                        theme,
                        isFocused: isFocused,
                        hasError: _hasError,
                        enabled: widget.enabled,
                      ),
                    ),
                  Expanded(
                    child: Focus(
                      focusNode: _focusNode,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: _effectiveValue,
                          isExpanded: widget.isExpanded,
                          hint: widget.hint != null
                              ? Text(
                                  widget.hint!,
                                  style: theme.hintStyle.copyWith(
                                    color: theme.hintStyle.color?.withValues(alpha: 0.6),
                                  ),
                                )
                              : null,
                          style: theme.inputStyle,
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: size(20),
                            color: AppColors.textMuted,
                          ),
                          borderRadius: BorderRadius.circular(theme.borderRadius),
                          padding: theme.contentPadding,
                          items: widget.items
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item, style: theme.inputStyle),
                                ),
                              )
                              .toList(),
                          onChanged: widget.enabled ? widget.onChanged : null,
                          onTap: () {
                            if (widget.enabled) _focusNode.requestFocus();
                          },
                        ),
                      ),
                    ),
                  ),
                  if (widget.suffix != null)
                    Padding(
                      padding: EdgeInsets.only(right: size(6)),
                      child: widget.suffix!.build(
                        context,
                        theme,
                        isFocused: isFocused,
                        hasError: _hasError,
                        enabled: widget.enabled,
                      ),
                    ),
                ],
              ),
            ),
            InputHelperText(
              helperText: widget.helperText,
              errorText: widget.errorText,
              theme: theme,
            ),
          ],
        ),
      ),
    );
  }
}

/// Dropdown dengan value dan label terpisah (mis. id + nama).
class AppInputSelectTyped<T> extends StatefulWidget {
  const AppInputSelectTyped({
    super.key,
    required this.items,
    this.value,
    this.onChanged,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.enabled = true,
    this.prefix,
    this.suffix,
    this.style,
    this.focusNode,
    this.isExpanded = true,
  });

  final List<AppSelectItem<T>> items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final FocusNode? focusNode;
  final String? label;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final bool enabled;
  final InputAffix? prefix;
  final InputAffix? suffix;
  final AppInputTheme? style;
  final bool isExpanded;

  @override
  State<AppInputSelectTyped<T>> createState() => _AppInputSelectTypedState<T>();
}

class _AppInputSelectTypedState<T> extends State<AppInputSelectTyped<T>> {
  late FocusNode _focusNode;
  late bool _ownsFocusNode;

  bool get _hasError => widget.errorText != null && widget.errorText!.isNotEmpty;

  T? get _effectiveValue {
    if (widget.value == null) return null;
    final exists = widget.items.any((item) => item.value == widget.value);
    return exists ? widget.value : null;
  }

  @override
  void initState() {
    super.initState();
    _ownsFocusNode = widget.focusNode == null;
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() => setState(() {});

  @override
  void didUpdateWidget(covariant AppInputSelectTyped<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.focusNode != oldWidget.focusNode) {
      _focusNode.removeListener(_onFocusChange);
      if (_ownsFocusNode) _focusNode.dispose();
      _ownsFocusNode = widget.focusNode == null;
      _focusNode = widget.focusNode ?? FocusNode();
      _focusNode.addListener(_onFocusChange);
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    if (_ownsFocusNode) _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = widget.style ?? AppInputTheme.of(context);
    final isFocused = _focusNode.hasFocus;

    return Opacity(
      opacity: widget.enabled ? 1 : theme.disabledOpacity,
      child: AbsorbPointer(
        absorbing: !widget.enabled,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.label != null) ...[
              Text(widget.label!, style: theme.labelStyle),
              SizedBox(height: size(7)),
            ],
            AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              decoration: BoxDecoration(
                color: theme.fillColor,
                borderRadius: BorderRadius.circular(theme.borderRadius),
                border: Border.all(
                  color: _hasError
                      ? theme.errorBorderColor
                      : isFocused
                      ? theme.focusedBorderColor
                      : theme.defaultBorderColor,
                  width: isFocused && !_hasError
                      ? theme.focusedBorderWidth
                      : theme.borderWidth,
                ),
                boxShadow: isFocused && !_hasError ? theme.focusShadow : null,
              ),
              child: Row(
                children: [
                  if (widget.prefix != null)
                    Padding(
                      padding: EdgeInsets.only(left: size(6)),
                      child: widget.prefix!.build(
                        context,
                        theme,
                        isFocused: isFocused,
                        hasError: _hasError,
                        enabled: widget.enabled,
                      ),
                    ),
                  Expanded(
                    child: Focus(
                      focusNode: _focusNode,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<T>(
                          value: _effectiveValue,
                          isExpanded: widget.isExpanded,
                          hint: widget.hint != null
                              ? Text(
                                  widget.hint!,
                                  style: theme.hintStyle.copyWith(
                                    color: theme.hintStyle.color?.withValues(alpha: 0.6),
                                  ),
                                )
                              : null,
                          style: theme.inputStyle,
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: size(20),
                            color: AppColors.textMuted,
                          ),
                          borderRadius: BorderRadius.circular(theme.borderRadius),
                          padding: theme.contentPadding,
                          items: widget.items
                              .map(
                                (item) => DropdownMenuItem<T>(
                                  value: item.value,
                                  child: Text(item.label, style: theme.inputStyle),
                                ),
                              )
                              .toList(),
                          onChanged: widget.enabled ? widget.onChanged : null,
                          onTap: () {
                            if (widget.enabled) _focusNode.requestFocus();
                          },
                        ),
                      ),
                    ),
                  ),
                  if (widget.suffix != null)
                    Padding(
                      padding: EdgeInsets.only(right: size(6)),
                      child: widget.suffix!.build(
                        context,
                        theme,
                        isFocused: isFocused,
                        hasError: _hasError,
                        enabled: widget.enabled,
                      ),
                    ),
                ],
              ),
            ),
            InputHelperText(
              helperText: widget.helperText,
              errorText: widget.errorText,
              theme: theme,
            ),
          ],
        ),
      ),
    );
  }
}

/// Skeleton loading untuk [AppInputSelect] / [AppInputSelectTyped].
class AppInputSelectShimmer extends StatelessWidget {
  const AppInputSelectShimmer({
    super.key,
    this.showLabel = true,
    this.showPrefix = false,
    this.style,
  });

  final bool showLabel;
  final bool showPrefix;
  final AppInputTheme? style;

  @override
  Widget build(BuildContext context) {
    return AppInputShimmer(
      showLabel: showLabel,
      showPrefix: showPrefix,
      showSuffix: true,
      prefixWidth: 28,
      suffixWidth: 20,
      style: style,
    );
  }
}
