import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../theme/app_input_theme.dart';
import 'app_input.dart';
import 'parts/input_affix.dart';
import 'package:heroicons/heroicons.dart';

/// Field tanggal read-only yang membuka [showDatePicker] Material.
class AppInputDate extends StatefulWidget {
  const AppInputDate({
    super.key,
    this.controller,
    this.value,
    this.onChanged,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.enabled = true,
    this.firstDate,
    this.lastDate,
    this.initialDate,
    this.dateFormat = 'dd / MM / yyyy',
    this.style,
    this.focusNode,
  });

  final TextEditingController? controller;
  final DateTime? value;
  final ValueChanged<DateTime?>? onChanged;
  final FocusNode? focusNode;
  final String? label;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final bool enabled;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime? initialDate;
  final String dateFormat;
  final AppInputTheme? style;

  @override
  State<AppInputDate> createState() => _AppInputDateState();
}

class _AppInputDateState extends State<AppInputDate> {
  late TextEditingController _controller;
  late bool _ownsController;
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.value;
    _ownsController = widget.controller == null;
    _controller = widget.controller ?? TextEditingController();
    _syncControllerText();
  }

  @override
  void didUpdateWidget(covariant AppInputDate oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      _selectedDate = widget.value;
      _syncControllerText();
    }
    if (widget.controller != oldWidget.controller) {
      if (_ownsController) _controller.dispose();
      _ownsController = widget.controller == null;
      _controller = widget.controller ?? TextEditingController();
      _syncControllerText();
    }
  }

  void _syncControllerText() {
    if (_selectedDate == null) {
      if (_ownsController) _controller.clear();
      return;
    }
    _controller.text = DateFormat(widget.dateFormat).format(_selectedDate!);
  }

  Future<void> _pickDate() async {
    if (!widget.enabled) return;

    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? widget.initialDate ?? now,
      firstDate: widget.firstDate ?? DateTime(1900),
      lastDate: widget.lastDate ?? DateTime(2100),
    );

    if (picked == null) return;

    setState(() {
      _selectedDate = picked;
      _syncControllerText();
    });
    widget.onChanged?.call(picked);
  }

  @override
  void dispose() {
    if (_ownsController) _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppInput(
      controller: _controller,
      focusNode: widget.focusNode,
      label: widget.label,
      hint: widget.hint ?? widget.dateFormat,
      helperText: widget.helperText,
      errorText: widget.errorText,
      enabled: widget.enabled,
      readOnly: true,
      onTap: _pickDate,
      style: widget.style,
      suffix: InputAffix.heroIcon(HeroIcons.calendarDays, onTap: _pickDate),
    );
  }
}

/// Skeleton loading untuk [AppInputDate].
class AppInputDateShimmer extends StatelessWidget {
  const AppInputDateShimmer({super.key, this.showLabel = true, this.style});

  final bool showLabel;
  final AppInputTheme? style;

  @override
  Widget build(BuildContext context) {
    return AppInputShimmer(
      showLabel: showLabel,
      showSuffix: true,
      suffixWidth: 28,
      style: style,
    );
  }
}
