import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import '../theme/app_input_theme.dart';
import 'app_input.dart';
import 'parts/input_affix.dart';

/// Deteksi sederhana jenis kartu dari digit awal (BIN).
String? detectCardBrand(String digits) {
  if (digits.isEmpty) return null;
  if (digits.startsWith('4')) return 'VISA';
  if (RegExp(r'^5[1-5]').hasMatch(digits) || RegExp(r'^2[2-7]').hasMatch(digits)) {
    return 'MC';
  }
  if (digits.startsWith('3')) return 'AMEX';
  return null;
}

/// Formatter: grup 4 digit dipisah spasi (max 16 digit).
class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final digits = newValue.text.replaceAll(RegExp(r'\D'), '');
    final limited = digits.length > 16 ? digits.substring(0, 16) : digits;

    final buffer = StringBuffer();
    for (var i = 0; i < limited.length; i++) {
      if (i > 0 && i % 4 == 0) buffer.write(' ');
      buffer.write(limited[i]);
    }

    final formatted = buffer.toString();
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}

/// Field nomor kartu kredit dengan format grup 4 digit dan badge jenis kartu.
class AppInputCard extends StatelessWidget {
  const AppInputCard({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.enabled = true,
    this.onChanged,
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
  final AppInputTheme? style;

  @override
  Widget build(BuildContext context) {
    final theme = style ?? AppInputTheme.of(context);

    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: controller,
      builder: (context, value, _) {
        final digits = value.text.replaceAll(RegExp(r'\D'), '');
        final brand = detectCardBrand(digits);

        return AppInput(
          controller: controller,
          focusNode: focusNode,
          label: label,
          hint: hint ?? '1234 5678 9012 3456',
          helperText: helperText,
          errorText: errorText,
          enabled: enabled,
          onChanged: onChanged,
          style: style,
          keyboardType: TextInputType.number,
          inputFormatters: [CardNumberInputFormatter()],
          suffix: brand != null
              ? InputAffix.custom(_CardBadge(brand: brand, theme: theme))
              : null,
        );
      },
    );
  }
}

class _CardBadge extends StatelessWidget {
  const _CardBadge({required this.brand, required this.theme});

  final String brand;
  final AppInputTheme theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size(8), vertical: size(4)),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(size(4)),
      ),
      child: Text(
        brand,
        style: theme.labelStyle.copyWith(
          fontSize: size(9),
          color: AppColors.primary,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

/// Skeleton loading untuk [AppInputCard].
class AppInputCardShimmer extends StatelessWidget {
  const AppInputCardShimmer({super.key, this.showLabel = true, this.style});

  final bool showLabel;
  final AppInputTheme? style;

  @override
  Widget build(BuildContext context) {
    return AppInputShimmer(
      showLabel: showLabel,
      showSuffix: true,
      suffixWidth: 40,
      style: style,
    );
  }
}
