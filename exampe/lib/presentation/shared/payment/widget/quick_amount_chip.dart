import 'package:flutter/material.dart';

import '../../../../core/ui/button/app_button.dart';
import '../../../../core/ui/theme/app_button_theme.dart';
import '../../../../core/utils/formatter.dart';
import '../../../../theme/app_scale.dart';

class QuickAmountChip extends StatelessWidget {
  const QuickAmountChip({
    super.key,
    required this.amounts,
    required this.onSelected,
  });

  final List<int> amounts;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: size(8),
      runSpacing: size(8),
      children: amounts.map((amount) {
        return SizedBox(
          height: size(36),
          child: AppButton.secondary(
            style: AppButtonTheme.of(context).copyWith(borderRadius: size(10)),
            label: amount.toRupiah() ?? '-',
            expand: false,
            padding: EdgeInsets.symmetric(
              horizontal: size(12),
              vertical: size(8),
            ),
            onPressed: () => onSelected(amount),
          ),
        );
      }).toList(),
    );
  }
}
