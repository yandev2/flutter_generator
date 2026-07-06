import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import '../../../../theme/theme.dart';

class StatusConfig {
  final String label;
  final HeroIcons icon;
  final Color color;
  StatusConfig({required this.label, required this.icon, required this.color});
}

StatusConfig getStatusConfig(String status) {
  status = status.toLowerCase();
  if (status.contains('pending') || status.contains('menunggu')) {
    return StatusConfig(
      label: 'Pending',
      icon: HeroIcons.clock,
      color: AppColors.amber,
    );
  } else if (status.contains('berhasil') ||
      status.contains('sukses') ||
      status.contains('disalurkan') ||
      status.contains('success') ||
      status.contains('verified')) {
    return StatusConfig(
      label: 'Berhasil',
      icon: HeroIcons.checkBadge,
      color: AppColors.primary,
    );
  } else if (status.contains('batal') ||
      status.contains('gagal') ||
      status.contains('cancelled') ||
      status.contains('failed')) {
    return StatusConfig(
      label: 'Gagal',
      icon: HeroIcons.xCircle,
      color: AppColors.red,
    );
  } else if (status.contains('refund')) {
    return StatusConfig(
      label: 'Refund',
      icon: HeroIcons.arrowPathRoundedSquare,
      color: AppColors.blue,
    );
  }
  return StatusConfig(
    label: status.capitalizeFirst ?? status,
    icon: HeroIcons.informationCircle,
    color: Colors.grey,
  );
}
