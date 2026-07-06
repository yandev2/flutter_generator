import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import '../theme/app_input_theme.dart';
import 'app_input.dart';
import 'parts/input_affix.dart';
import 'parts/password_strength_meter.dart';

/// Field password dengan toggle visibility dan strength meter opsional.
class AppInputPassword extends StatefulWidget {
  const AppInputPassword({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.enabled = true,
    this.onChanged,
    this.showStrengthMeter = true,
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
  final bool showStrengthMeter;
  final AppInputTheme? style;

  @override
  State<AppInputPassword> createState() => _AppInputPasswordState();
}

class _AppInputPasswordState extends State<AppInputPassword> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return AppInput(
      controller: widget.controller,
      focusNode: widget.focusNode,
      label: widget.label,
      hint: widget.hint,
      helperText: widget.helperText,
      errorText: widget.errorText,
      enabled: widget.enabled,
      obscureText: _obscure,
      onChanged: widget.onChanged,
      style: widget.style,
      prefix: InputAffix.heroIcon(HeroIcons.lockClosed),
      suffix: InputAffix.heroIcon(
        _obscure ? HeroIcons.eye : HeroIcons.eyeSlash,
        onTap: () => setState(() => _obscure = !_obscure),
      ),
      belowField: widget.showStrengthMeter
          ? ValueListenableBuilder<TextEditingValue>(
              valueListenable: widget.controller,
              builder: (context, value, _) {
                return PasswordStrengthMeter(password: value.text);
              },
            )
          : null,
    );
  }
}

/// Skeleton loading untuk [AppInputPassword].
class AppInputPasswordShimmer extends StatelessWidget {
  const AppInputPasswordShimmer({
    super.key,
    this.showLabel = true,
    this.showStrengthMeter = true,
    this.style,
  });

  final bool showLabel;
  final bool showStrengthMeter;
  final AppInputTheme? style;

  @override
  Widget build(BuildContext context) {
    return AppInputShimmer(
      showLabel: showLabel,
      showPrefix: true,
      showSuffix: true,
      prefixWidth: 28,
      suffixWidth: 28,
      showBelowField: showStrengthMeter,
      style: style,
    );
  }
}
