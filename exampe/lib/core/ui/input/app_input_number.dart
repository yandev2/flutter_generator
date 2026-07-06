import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/app_input_theme.dart';
import 'app_input.dart';
import 'parts/input_affix.dart';
import 'parts/number_stepper.dart';

/// Field angka dengan stepper increment/decrement di suffix.
class AppInputNumber extends StatefulWidget {
  const AppInputNumber({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.enabled = true,
    this.onChanged,
    this.min,
    this.max,
    this.step = 1,
    this.allowDecimal = false,
    this.style,
    this.focusNode,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final String? label;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final num? min;
  final num? max;
  final num step;
  final bool allowDecimal;
  final AppInputTheme? style;

  @override
  State<AppInputNumber> createState() => _AppInputNumberState();
}

class _AppInputNumberState extends State<AppInputNumber> {
  List<TextInputFormatter> get _formatters {
    if (widget.allowDecimal) {
      return [FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*'))];
    }
    return [FilteringTextInputFormatter.digitsOnly];
  }

  num? get _currentValue {
    final text = widget.controller.text.trim();
    if (text.isEmpty) return null;
    return widget.allowDecimal ? double.tryParse(text) : int.tryParse(text);
  }

  void _applyValue(num value) {
    var clamped = value;
    if (widget.min != null && clamped < widget.min!) clamped = widget.min!;
    if (widget.max != null && clamped > widget.max!) clamped = widget.max!;

    final text = widget.allowDecimal
        ? clamped.toString()
        : clamped.round().toString();
    widget.controller.text = text;
    widget.onChanged?.call(text);
    setState(() {});
  }

  void _increment() {
    final current = _currentValue ?? widget.min ?? 0;
    _applyValue(current + widget.step);
  }

  void _decrement() {
    final current = _currentValue ?? widget.min ?? 0;
    _applyValue(current - widget.step);
  }

  bool get _canIncrement {
    if (widget.max == null) return true;
    final current = _currentValue ?? widget.min ?? 0;
    return current + widget.step <= widget.max!;
  }

  bool get _canDecrement {
    if (widget.min == null) return true;
    final current = _currentValue ?? widget.min ?? 0;
    return current - widget.step >= widget.min!;
  }

  @override
  Widget build(BuildContext context) {
    final theme = widget.style ?? AppInputTheme.of(context);

    return AppInput(
      controller: widget.controller,
      focusNode: widget.focusNode,
      label: widget.label,
      hint: widget.hint,
      helperText: widget.helperText,
      errorText: widget.errorText,
      enabled: widget.enabled,
      onChanged: widget.onChanged,
      style: widget.style,
      keyboardType: widget.allowDecimal
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.number,
      inputFormatters: _formatters,
      suffix: InputAffix.custom(
        NumberStepper(
          onIncrement: _increment,
          onDecrement: _decrement,
          enabled: widget.enabled && (_canIncrement || _canDecrement),
          theme: theme,
        ),
        showDivider: true,
      ),
    );
  }
}

/// Skeleton loading untuk [AppInputNumber].
class AppInputNumberShimmer extends StatelessWidget {
  const AppInputNumberShimmer({super.key, this.showLabel = true, this.style});

  final bool showLabel;
  final AppInputTheme? style;

  @override
  Widget build(BuildContext context) {
    return AppInputShimmer(
      showLabel: showLabel,
      showSuffix: true,
      suffixWidth: 72,
      style: style,
    );
  }
}
