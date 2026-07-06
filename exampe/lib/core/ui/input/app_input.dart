import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../theme/app_scale.dart';
import '../theme/app_input_theme.dart';
import 'parts/input_affix.dart';
import 'parts/input_helper_text.dart';

/// Widget input dasar yang composable — layout, border, focus, error, disabled.
class AppInput extends StatefulWidget {
  const AppInput({
    super.key,
    this.controller,
    this.focusNode,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.enabled = true,
    this.readOnly = false,
    this.obscureText = false,
    this.keyboardType,
    this.inputFormatters,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.prefix,
    this.suffix,
    this.maxLines = 1,
    this.style,
    this.belowField,
    this.textAlign,
    this.autofocus = false,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? label;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final bool enabled;
  final bool readOnly;
  final bool obscureText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final VoidCallback? onEditingComplete;
  final InputAffix? prefix;
  final InputAffix? suffix;
  final int maxLines;
  final AppInputTheme? style;
  final Widget? belowField;
  final TextAlign? textAlign;
  final bool autofocus;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  late FocusNode _focusNode;
  late bool _ownsFocusNode;

  bool get _hasError => widget.errorText != null && widget.errorText!.isNotEmpty;

  @override
  void initState() {
    super.initState();
    _ownsFocusNode = widget.focusNode == null;
    _focusNode = widget.focusNode ?? FocusNode();
  }

  @override
  void didUpdateWidget(covariant AppInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.focusNode != oldWidget.focusNode) {
      if (_ownsFocusNode) _focusNode.dispose();
      _ownsFocusNode = widget.focusNode == null;
      _focusNode = widget.focusNode ?? FocusNode();
    }
  }

  @override
  void dispose() {
    if (_ownsFocusNode) _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = widget.style ?? AppInputTheme.of(context);

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
            ListenableBuilder(
              listenable: _focusNode,
              builder: (context, _) {
                final isFocused = _focusNode.hasFocus;
                final borderColor = _hasError
                    ? theme.errorBorderColor
                    : isFocused
                    ? theme.focusedBorderColor
                    : theme.defaultBorderColor;
                final borderWidth = isFocused && !_hasError
                    ? theme.focusedBorderWidth
                    : theme.borderWidth;

                return AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  decoration: BoxDecoration(
                    color: theme.fillColor,
                    borderRadius: BorderRadius.circular(theme.borderRadius),
                    border: Border.all(color: borderColor, width: borderWidth),
                    boxShadow: isFocused && !_hasError ? theme.focusShadow : null,
                  ),
                  child: Row(
                    crossAxisAlignment: widget.maxLines > 1
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: [
                      if (widget.prefix != null)
                        Padding(
                          padding: EdgeInsets.only(
                            left: size(6),
                            top: widget.maxLines > 1 ? size(8) : 0,
                          ),
                          child: widget.prefix!.build(
                            context,
                            theme,
                            isFocused: isFocused,
                            hasError: _hasError,
                            enabled: widget.enabled,
                          ),
                        ),
                      Expanded(
                        child: TextField(
                          controller: widget.controller,
                          focusNode: _focusNode,
                          enabled: widget.enabled,
                          readOnly: widget.readOnly,
                          obscureText: widget.obscureText,
                          keyboardType: widget.keyboardType,
                          inputFormatters: widget.inputFormatters,
                          onChanged: widget.onChanged,
                          onTap: widget.onTap,
                          onEditingComplete: widget.onEditingComplete,
                          maxLines: widget.obscureText ? 1 : widget.maxLines,
                          autofocus: widget.autofocus,
                          textAlign: widget.textAlign ?? TextAlign.start,
                          style: theme.inputStyle,
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            contentPadding: theme.contentPadding,
                            hintText: widget.hint,
                            hintStyle: theme.hintStyle.copyWith(
                              color: theme.hintStyle.color?.withValues(alpha: 0.6),
                            ),
                          ),
                        ),
                      ),
                      if (widget.suffix != null)
                        Padding(
                          padding: EdgeInsets.only(
                            right: size(6),
                            top: widget.maxLines > 1 ? size(8) : 0,
                          ),
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
                );
              },
            ),
            if (widget.belowField != null) widget.belowField!,
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

/// Skeleton loading untuk [AppInput] — layout sama dengan field asli.
class AppInputShimmer extends StatelessWidget {
  const AppInputShimmer({
    super.key,
    this.showLabel = true,
    this.showHelper = false,
    this.showPrefix = false,
    this.showSuffix = false,
    this.showBelowField = false,
    this.prefixWidth = 36,
    this.suffixWidth = 36,
    this.style,
  });

  final bool showLabel;
  final bool showHelper;
  final bool showPrefix;
  final bool showSuffix;
  final bool showBelowField;
  final int prefixWidth;
  final int suffixWidth;
  final AppInputTheme? style;

  @override
  Widget build(BuildContext context) {
    final theme = style ?? AppInputTheme.of(context);
    final fieldHeight = size(44);

    return Skeletonizer(
      enabled: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showLabel) ...[Bone(width: size(88), height: size(14)), SizedBox(height: size(7))],
          Container(
            height: fieldHeight,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(theme.borderRadius)),
            child: Row(
              children: [
                if (showPrefix) ...[
                  SizedBox(width: size(6)),
                  Bone(
                    width: size(prefixWidth),
                    height: size(20),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ],
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: size(12)),
                    child: Bone(height: size(14)),
                  ),
                ),
                if (showSuffix) ...[
                  Bone(
                    width: size(suffixWidth),
                    height: size(20),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  SizedBox(width: size(6)),
                ],
              ],
            ),
          ),
          if (showBelowField) ...[
            SizedBox(height: size(8)),
            Bone(height: size(6), borderRadius: BorderRadius.circular(30)),
          ],
          if (showHelper) ...[SizedBox(height: size(6)), Bone(width: size(140), height: size(12))],
        ],
      ),
    );
  }
}
