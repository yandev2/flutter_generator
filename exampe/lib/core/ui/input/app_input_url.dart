import 'package:flutter/material.dart';

import '../theme/app_input_theme.dart';
import 'app_input.dart';
import 'parts/input_affix.dart';

/// Field URL dengan prefix `https://` tetap.
///
/// Controller menyimpan **path saja** (tanpa scheme). Nilai penuh tersedia
/// lewat [fullUrl] atau [AppInputUrl.prefix] + controller.text.
class AppInputUrl extends StatelessWidget {
  const AppInputUrl({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.enabled = true,
    this.onChanged,
    this.scheme = 'https://',
    this.style,
    this.focusNode,
  });

  static const String prefix = 'https://';

  final TextEditingController controller;
  final FocusNode? focusNode;
  final String? label;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final String scheme;
  final AppInputTheme? style;

  String get fullUrl => '$scheme${controller.text}';

  @override
  Widget build(BuildContext context) {
    return AppInput(
      controller: controller,
      focusNode: focusNode,
      label: label,
      hint: hint ?? 'example.com/path',
      helperText: helperText,
      errorText: errorText,
      enabled: enabled,
      onChanged: onChanged,
      style: style,
      keyboardType: TextInputType.url,
      prefix: InputAffix.text(scheme, showDivider: true),
    );
  }
}

/// Skeleton loading untuk [AppInputUrl].
class AppInputUrlShimmer extends StatelessWidget {
  const AppInputUrlShimmer({super.key, this.showLabel = true, this.style});

  final bool showLabel;
  final AppInputTheme? style;

  @override
  Widget build(BuildContext context) {
    return AppInputShimmer(
      showLabel: showLabel,
      showPrefix: true,
      prefixWidth: 56,
      style: style,
    );
  }
}
