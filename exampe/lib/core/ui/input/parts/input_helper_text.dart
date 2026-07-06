import 'package:flutter/material.dart';
import '../../../../theme/app_scale.dart';
import '../../theme/app_input_theme.dart';

/// Baris helper atau pesan error di bawah field.
class InputHelperText extends StatelessWidget {
  const InputHelperText({
    super.key,
    this.helperText,
    this.errorText,
    required this.theme,
  });

  final String? helperText;
  final String? errorText;
  final AppInputTheme theme;

  bool get _hasError => errorText != null && errorText!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final text = _hasError ? errorText : helperText;
    if (text == null || text.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: EdgeInsets.only(top: size(6), left: size(2)),
      child: Text(
        text,
        style: _hasError ? theme.errorStyle : theme.helperStyle,
      ),
    );
  }
}
