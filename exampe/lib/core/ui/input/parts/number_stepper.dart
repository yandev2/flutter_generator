import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import '../../../../theme/app_scale.dart';
import '../../../../theme/theme.dart';
import '../../theme/app_input_theme.dart';

/// Tombol panah atas/bawah untuk increment/decrement nilai numerik.
class NumberStepper extends StatelessWidget {
  const NumberStepper({
    super.key,
    required this.onIncrement,
    required this.onDecrement,
    required this.enabled,
    this.theme,
  });

  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final bool enabled;
  final AppInputTheme? theme;

  @override
  Widget build(BuildContext context) {
    final inputTheme = theme ?? AppInputTheme.of(context);
    final iconColor = enabled ? AppColors.textMuted : AppColors.textMuted.withValues(alpha: 0.4);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _StepButton(
          icon: HeroIcons.chevronUp,
          onTap: enabled ? onIncrement : null,
          color: iconColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(inputTheme.borderRadius)),
        ),
        Container(width: size(28), height: 1, color: inputTheme.dividerColor),
        _StepButton(
          icon: HeroIcons.chevronDown,
          onTap: enabled ? onDecrement : null,
          color: iconColor,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(inputTheme.borderRadius)),
        ),
      ],
    );
  }
}

class _StepButton extends StatelessWidget {
  const _StepButton({
    required this.icon,
    required this.onTap,
    required this.color,
    required this.borderRadius,
  });

  final HeroIcons icon;
  final VoidCallback? onTap;
  final Color color;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: SizedBox(
          width: size(28),
          height: size(18),
          child: Center(
            child: HeroIcon(icon, size: size(12), color: color),
          ),
        ),
      ),
    );
  }
}
