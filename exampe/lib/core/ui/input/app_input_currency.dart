import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import '../../utils/formatter.dart';
import '../theme/app_input_theme.dart';
import 'app_input.dart';
import 'parts/input_affix.dart';

const kDefaultCurrencies = ['IDR', 'USD', 'MYR'];

class AppInputCurrency extends StatefulWidget {
  const AppInputCurrency({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.enabled = true,
    this.onChanged,
    this.currencies = kDefaultCurrencies,
    this.selectedCurrency = 'IDR',
    this.onCurrencyChanged,
    this.currencySymbols = const {'IDR': 'Rp', 'USD': '\$', 'MYR': 'RM'},
    this.style,
    this.focusNode,
    this.inputFormatters,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final String? label;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final List<String> currencies;
  final String selectedCurrency;
  final ValueChanged<String>? onCurrencyChanged;
  final Map<String, String> currencySymbols;
  final AppInputTheme? style;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<AppInputCurrency> createState() => _AppInputCurrencyState();
}

class _AppInputCurrencyState extends State<AppInputCurrency> {
  late String _currency;

  @override
  void initState() {
    super.initState();
    _currency = widget.selectedCurrency;
  }

  @override
  void didUpdateWidget(covariant AppInputCurrency oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedCurrency != oldWidget.selectedCurrency) {
      _currency = widget.selectedCurrency;
    }
  }

  String get _symbol => widget.currencySymbols[_currency] ?? _currency;

  @override
  Widget build(BuildContext context) {
    final theme = widget.style ?? AppInputTheme.of(context);

    return AppInput(
      controller: widget.controller,
      focusNode: widget.focusNode,
      label: widget.label,
      hint: widget.hint ?? '0',
      helperText: widget.helperText,
      errorText: widget.errorText,
      enabled: widget.enabled,
      onChanged: widget.onChanged,
      style: widget.style,
      keyboardType: TextInputType.number,
      inputFormatters: widget.inputFormatters ?? [RibuanInputFormatter()],
      prefix: InputAffix.text(_symbol, showDivider: true),
      suffix: InputAffix.custom(
        _CurrencyDropdown(
          value: _currency,
          items: widget.currencies,
          enabled: widget.enabled,
          theme: theme,
          onChanged: (value) {
            if (value == null) return;
            setState(() => _currency = value);
            widget.onCurrencyChanged?.call(value);
          },
        ),
        showDivider: true,
      ),
    );
  }
}

class _CurrencyDropdown extends StatelessWidget {
  const _CurrencyDropdown({
    required this.value,
    required this.items,
    required this.onChanged,
    required this.enabled,
    required this.theme,
  });

  final String value;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final bool enabled;
  final AppInputTheme theme;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: value,
        isDense: true,
        icon: Icon(Icons.keyboard_arrow_down, size: size(18), color: AppColors.textMuted),
        style: theme.inputStyle.copyWith(fontSize: size(10)),
        items: items.map((c) => DropdownMenuItem(value: c, child: Text(c))).toList(),
        onChanged: enabled ? onChanged : null,
      ),
    );
  }
}

/// Skeleton loading untuk [AppInputCurrency].
class AppInputCurrencyShimmer extends StatelessWidget {
  const AppInputCurrencyShimmer({super.key, this.showLabel = true, this.style});

  final bool showLabel;
  final AppInputTheme? style;

  @override
  Widget build(BuildContext context) {
    return AppInputShimmer(
      showLabel: showLabel,
      showPrefix: true,
      showSuffix: true,
      prefixWidth: 28,
      suffixWidth: 48,
      style: style,
    );
  }
}
