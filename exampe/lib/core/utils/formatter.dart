import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

extension StringDateFormatterExt on String? {
  String toDateId({String emptyValue = '-'}) {
    if (this == null || this!.isEmpty) return emptyValue;

    try {
      final date = DateTime.parse(this!);
      return DateFormat('d MMM y', 'id_ID').format(date);
    } catch (_) {
      return emptyValue;
    }
  }

  String toTimeId({String emptyValue = '-'}) {
    if (this == null || this!.isEmpty) return emptyValue;

    try {
      final date = DateTime.parse(this!);
      return DateFormat('HH:mm').format(date);
    } catch (_) {
      return emptyValue;
    }
  }

  String toDateTimeId({String emptyValue = '-'}) {
    if (this == null || this!.isEmpty) return emptyValue;

    try {
      final date = DateTime.parse(this!);
      return DateFormat('d MMM y HH:mm').format(date);
    } catch (_) {
      return emptyValue;
    }
  }
}

extension CurrencyFormatterExt on num? {
  String? toRupiah({String symbol = 'Rp '}) {
    final format = NumberFormat.currency(locale: 'id_ID', symbol: symbol, decimalDigits: 0);
    return format.format(this ?? 0);
  }
}

extension DoubleFormatter on double? {
  String toPercent({int fractionDigits = 0}) {
    double percent = (this ?? 0) * 100;
    return '${percent.toStringAsFixed(fractionDigits)}%';
  }

  double toRawPercent({int fractionDigits = 0}) {
    double percent = (this ?? 0) / 100;
    return percent.clamp(0.0, 1.0);
  }
}

class RibuanInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue;
    }

    String cleanText = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

    if (cleanText.isEmpty) {
      return const TextEditingValue();
    }
    int value = int.parse(cleanText);
    final formatter = NumberFormat.decimalPattern('id_ID');
    String formattedText = formatter.format(value);

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}
