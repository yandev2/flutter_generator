import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../theme/app_scale.dart';
import '../../../theme/theme.dart';
import '../theme/app_input_theme.dart';
import 'app_input.dart';
import 'parts/input_affix.dart';
import 'phone_country_data.dart';

class AppInputPhone extends StatefulWidget {
  const AppInputPhone({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.enabled = true,
    this.onChanged,
    this.selectedCountryCode = 'ID',
    this.onCountryChanged,
    this.countries = kPhoneCountries,
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
  final String selectedCountryCode;
  final ValueChanged<PhoneCountryData>? onCountryChanged;
  final Map<String, PhoneCountryData> countries;
  final AppInputTheme? style;

  @override
  State<AppInputPhone> createState() => _AppInputPhoneState();
}

class _AppInputPhoneState extends State<AppInputPhone> {
  late String _countryCode;

  @override
  void initState() {
    super.initState();
    _countryCode = widget.selectedCountryCode;
  }

  @override
  void didUpdateWidget(covariant AppInputPhone oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedCountryCode != oldWidget.selectedCountryCode) {
      _countryCode = widget.selectedCountryCode;
    }
  }

  PhoneCountryData get _country => widget.countries[_countryCode] ?? kPhoneCountries['ID']!;

  String get fullNumber => '${_country.dialCode}${widget.controller.text}';

  @override
  Widget build(BuildContext context) {
    final theme = widget.style ?? AppInputTheme.of(context);

    return AppInput(
      controller: widget.controller,
      focusNode: widget.focusNode,
      label: widget.label,
      hint: widget.hint ?? '8123456789',
      helperText: widget.helperText,
      errorText: widget.errorText,
      enabled: widget.enabled,
      onChanged: widget.onChanged,
      style: widget.style,
      keyboardType: TextInputType.phone,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(_country.maxLength),
      ],
      prefix: InputAffix.custom(
        _CountryPicker(
          country: _country,
          countries: widget.countries,
          enabled: widget.enabled,
          theme: theme,
          onChanged: (code) {
            setState(() => _countryCode = code);
            widget.onCountryChanged?.call(widget.countries[code]!);
          },
        ),
        showDivider: true,
      ),
    );
  }
}

class _CountryPicker extends StatelessWidget {
  const _CountryPicker({
    required this.country,
    required this.countries,
    required this.onChanged,
    required this.enabled,
    required this.theme,
  });

  final PhoneCountryData country;
  final Map<String, PhoneCountryData> countries;
  final ValueChanged<String> onChanged;
  final bool enabled;
  final AppInputTheme theme;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      enabled: enabled,
      initialValue: country.code,
      offset: Offset(0, size(40)),
      itemBuilder: (context) => countries.values
          .map(
            (c) => PopupMenuItem(
              value: c.code,
              child: Row(
                children: [
                  Text(c.flag, style: TextStyle(fontSize: size(16))),
                  SizedBox(width: size(8)),
                  Text('${c.dialCode} (${c.code})'),
                ],
              ),
            ),
          )
          .toList(),
      onSelected: onChanged,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size(4)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(country.flag, style: TextStyle(fontSize: size(16))),
            SizedBox(width: size(4)),
            Text(country.dialCode, style: theme.inputStyle.copyWith(fontSize: size(10))),
            Icon(Icons.keyboard_arrow_down, size: size(16), color: AppColors.textMuted),
          ],
        ),
      ),
    );
  }
}

/// Skeleton loading untuk [AppInputPhone].
class AppInputPhoneShimmer extends StatelessWidget {
  const AppInputPhoneShimmer({super.key, this.showLabel = true, this.style});

  final bool showLabel;
  final AppInputTheme? style;

  @override
  Widget build(BuildContext context) {
    return AppInputShimmer(showLabel: showLabel, showPrefix: true, prefixWidth: 72, style: style);
  }
}
