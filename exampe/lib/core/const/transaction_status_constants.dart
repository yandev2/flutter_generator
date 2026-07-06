import 'package:heroicons/heroicons.dart';

abstract class TransactionStatusConstants {
  static const List<String> tabLabels = ['Semua', 'Pending', 'Berhasil', 'Gagal', 'Refund'];

  static const List<HeroIcons> tabIcons = [
    HeroIcons.listBullet,
    HeroIcons.clock,
    HeroIcons.checkBadge,
    HeroIcons.xCircle,
    HeroIcons.arrowPathRoundedSquare,
  ];

  static const List<String?> tabStatusQueries = [null, 'Pending', 'Verified', 'Failed', 'Refunded'];

  static String? statusForTab(int tabIndex) {
    if (tabIndex < 0 || tabIndex >= tabStatusQueries.length) return null;
    return tabStatusQueries[tabIndex];
  }
}
