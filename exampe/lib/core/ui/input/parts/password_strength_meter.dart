import 'package:flutter/material.dart';

import '../../../../theme/app_scale.dart';
import '../../../../theme/theme.dart';


/// Skor kekuatan password 0–4 berdasarkan kriteria umum.
int passwordStrengthScore(String password) {
  if (password.isEmpty) return 0;

  var score = 0;
  if (password.length >= 8) score++;
  if (RegExp(r'[A-Z]').hasMatch(password)) score++;
  if (RegExp(r'[0-9]').hasMatch(password)) score++;
  if (RegExp(r'[^A-Za-z0-9]').hasMatch(password)) score++;
  return score;
}

/// Meter 4 segmen horizontal di bawah field password.
class PasswordStrengthMeter extends StatelessWidget {
  const PasswordStrengthMeter({
    super.key,
    required this.password,
    this.segmentCount = 4,
  });

  final String password;
  final int segmentCount;

  @override
  Widget build(BuildContext context) {
    final score = passwordStrengthScore(password);

    return Padding(
      padding: EdgeInsets.only(top: size(8)),
      child: Row(
        children: List.generate(segmentCount, (index) {
          final isActive = index < score;
          return Expanded(
            child: Container(
              height: size(4),
              margin: EdgeInsets.only(right: index < segmentCount - 1 ? size(4) : 0),
              decoration: BoxDecoration(
                color: isActive
                    ? AppColors.primary
                    : AppColors.textMuted.withValues(alpha: 0.25),
                borderRadius: BorderRadius.circular(size(2)),
              ),
            ),
          );
        }),
      ),
    );
  }
}
