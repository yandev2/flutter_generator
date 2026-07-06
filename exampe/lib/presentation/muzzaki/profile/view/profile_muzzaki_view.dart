import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:simzakat_baznas_lubuklinggau/theme/app_scale.dart';
import '../../../../core/shared/appbar_detail_view.dart';
import '../../../../core/ui/button/app_button.dart';
import '../../../../core/ui/card/card_profile.dart';
import '../../../../core/ui/theme/app_toast_theme.dart';
import '../../../../core/ui/toast/app_toast.dart';
import '../../../../core/utils/formatter.dart';
import '../../../../core/utils/style.dart';
import '../../../../theme/theme.dart';
import '../controller/profile_muzzaki_controller.dart';

class ProfileMuzzakiView extends GetView<ProfileMuzzakiController> {
  const ProfileMuzzakiView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: RefreshIndicator(
        onRefresh: controller.refresh,
        color: theme.primaryColor,
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            AppbarDetailView(title: "Profile", isBack: false),
            _HeaderSection(),
            _SubHeaderSection(),
            _BodySection(),
            _SubBodySection(),
            _FooterSection(),
          ],
        ),
      ),
    );
  }
}

class _HeaderSection extends GetView<ProfileMuzzakiController> {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    final user = controller.user.value;
    final isVerified =
        user?.status?.toLowerCase() == 'active' ||
        user?.status?.toLowerCase() == 'verified';
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size(16)),
      sliver: SliverList.list(
        children: [
          SizedBox(height: size(20)),
          CardProfile.network(
            width: double.infinity,
            imageUrl: user?.avatar ?? '',
            name: user?.name ?? 'Pengguna',
            email: user?.email ?? '-',
            badge: GestureDetector(
              onTap: () {
                if (!isVerified && Get.context != null) {
                  showAppToast(
                    Get.context!,
                    message: 'Silakan verifikasi email Anda.',
                    variant: AppToastVariant.warning,
                  );
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: size(12),
                  vertical: size(6),
                ),
                decoration: BoxDecoration(
                  color: isVerified
                      ? theme.primaryColor.withValues(alpha: 0.1)
                      : AppColors.red.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(size(20)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    HeroIcon(
                      isVerified ? HeroIcons.checkBadge : HeroIcons.xCircle,
                      color: isVerified ? theme.primaryColor : AppColors.red,
                      size: size(14),
                    ),
                    SizedBox(width: size(6)),
                    Text(
                      isVerified ? 'Akun Terverifikasi' : 'Belum Verifikasi',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isVerified ? theme.primaryColor : AppColors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SubHeaderSection extends GetView<ProfileMuzzakiController> {
  const _SubHeaderSection();

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    final summary = controller.summary.value;
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size(16)),
      sliver: SliverList.list(
        children: [
          SizedBox(height: size(20)),
          Container(
            padding: EdgeInsets.all(size(16)),
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(size(16)),
              boxShadow: [boxShadow],
            ),
            child: Row(
              children: [
                Expanded(
                  child: _StatItem(
                    theme: theme,
                    label: 'Total Zakat',
                    value: "${(summary?.totalZakat ?? 0).toRupiah()}",
                    icon: HeroIcons.calculator,
                    color: theme.primaryColor,
                  ),
                ),
                Container(
                  width: 1,
                  height: size(60),
                  color: Colors.grey.shade200,
                ),
                Expanded(
                  child: _StatItem(
                    theme: theme,
                    label: 'Total Donasi',
                    value: "${(summary?.totalDonasi ?? 0).toRupiah()}",
                    icon: HeroIcons.sparkles,
                    color: theme.colorScheme.secondary,
                  ),
                ),
                Container(
                  width: 1,
                  height: size(60),
                  color: Colors.grey.shade200,
                ),
                Expanded(
                  child: _StatItem(
                    theme: theme,
                    label: 'BSZ Tahun Ini',
                    value: '${summary?.bszCountThisYear ?? 0}',
                    icon: HeroIcons.clipboard,
                    color: AppColors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final ThemeData theme;
  final String label;
  final String value;
  final HeroIcons icon;
  final Color color;

  const _StatItem({
    required this.theme,
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(size(8)),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(size(10)),
          ),
          child: HeroIcon(icon, color: color, size: size(16)),
        ),
        SizedBox(height: size(8)),
        Text(
          value,
          style: theme.textTheme.titleSmall?.copyWith(
            fontSize: size(10),
            color: color,
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: size(2)),
        Text(
          label,
          style: theme.textTheme.labelSmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _BodySection extends GetView<ProfileMuzzakiController> {
  const _BodySection();

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    final user = controller.user.value;
    final profile = user?.muzakkiProfile;
    final hasNpwp = profile?.npwp?.isNotEmpty == true;
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size(16)),
      sliver: SliverList.list(
        children: [
          SizedBox(height: size(20)),
          Container(
            padding: EdgeInsets.all(size(16)),
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(size(16)),
              boxShadow: [boxShadow],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Informasi Akun', style: theme.textTheme.titleSmall),
                SizedBox(height: size(12)),
                _InfoRow(
                  theme: theme,
                  icon: HeroIcons.wallet,
                  label: 'NIK',
                  value: profile?.nik ?? 'Belum diisi',
                  isComplete: profile?.nik?.isNotEmpty == true,
                ),
                Divider(
                  height: size(30),
                  color: theme.textTheme.titleLarge!.color?.withAlpha(20),
                ),

                if (!hasNpwp) ...[
                  _InfoRow(
                    theme: theme,
                    icon: HeroIcons.identification,
                    label: 'NPWP',
                    value: profile?.npwp ?? 'Belum diisi',
                    isComplete: hasNpwp,
                  ),
                  SizedBox(height: size(8)),
                  Container(
                    padding: EdgeInsets.all(size(10)),
                    decoration: BoxDecoration(
                      color: AppColors.amber.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(size(8)),
                      border: Border.all(
                        color: AppColors.amber.withValues(alpha: 0.3),
                      ),
                    ),
                    child: Row(
                      children: [
                        HeroIcon(
                          HeroIcons.exclamationTriangle,
                          color: AppColors.amber,
                          size: size(20),
                        ),
                        SizedBox(width: size(10)),
                        Expanded(
                          child: Text(
                            'NPWP diperlukan untuk mendapatkan manfaat pengurangan pajak.',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppColors.amber,
                              fontSize: size(9),
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final ThemeData theme;
  final HeroIcons icon;
  final String label;
  final String value;
  final bool isComplete;

  const _InfoRow({
    required this.theme,
    required this.icon,
    required this.label,
    required this.value,
    required this.isComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeroIcon(
          icon,
          color: isComplete ? theme.primaryColor : Colors.grey,
          size: size(18),
        ),
        SizedBox(width: size(10)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: theme.textTheme.labelSmall),
              Text(
                value,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: isComplete ? theme.colorScheme.onSurface : Colors.grey,
                ),
              ),
            ],
          ),
        ),
        if (!isComplete)
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: size(8),
              vertical: size(3),
            ),
            decoration: BoxDecoration(
              color: AppColors.amber.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(size(20)),
            ),
            child: Text(
              'Lengkapi',
              style: theme.textTheme.bodySmall?.copyWith(
                color: AppColors.amber,
                fontSize: size(9),
              ),
            ),
          )
        else
          HeroIcon(HeroIcons.check, color: theme.primaryColor, size: size(16)),
      ],
    );
  }
}

class _SubBodySection extends GetView<ProfileMuzzakiController> {
  const _SubBodySection();

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    final menus = [
      _MenuMeta(
        icon: Icons.bar_chart_rounded,
        label: 'Ringkasan Kontribusi',
        color: theme.primaryColor,
        onTap: () {
          if (Get.context != null) {
            showAppToast(
              Get.context!,
              message: 'Halaman ini sedang dikembangkan.',
              variant: AppToastVariant.info,
            );
          }
        },
      ),
      _MenuMeta(
        icon: Icons.lock_outline_rounded,
        label: 'Ubah Password',
        color: AppColors.red,
        onTap: () {
          if (Get.context != null) {
            showAppToast(
              Get.context!,
              message: 'Halaman ubah password segera hadir.',
              variant: AppToastVariant.info,
            );
          }
        },
      ),
      _MenuMeta(
        icon: Icons.help_outline_rounded,
        label: 'Bantuan & FAQ',
        color: AppColors.blue,
        onTap: () {
          if (Get.context != null) {
            showAppToast(
              Get.context!,
              message: 'Halaman bantuan segera hadir.',
              variant: AppToastVariant.info,
            );
          }
        },
      ),
      _MenuMeta(
        icon: Icons.info_outline_rounded,
        label: 'Tentang Aplikasi',
        color: AppColors.amber,
        onTap: () {
          if (Get.context != null) {
            showAppToast(
              Get.context!,
              message: 'SimZakat Versi 1.0.0 — BAZNAS',
              variant: AppToastVariant.info,
            );
          }
        },
      ),
    ];
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size(16)),
      sliver: SliverList.list(
        children: [
          SizedBox(height: size(20)),
          Container(
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(size(16)),
              boxShadow: [boxShadow],
            ),
            child: Column(
              children: menus.asMap().entries.map((e) {
                final index = e.key;
                final menu = e.value;
                return Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: size(16),
                        vertical: size(4),
                      ),
                      leading: Container(
                        width: size(38),
                        height: size(38),
                        decoration: BoxDecoration(
                          color: menu.color.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(size(10)),
                        ),
                        child: Icon(
                          menu.icon,
                          color: menu.color,
                          size: size(18),
                        ),
                      ),
                      title: Text(
                        menu.label,
                        style: theme.textTheme.bodyMedium,
                      ),
                      trailing: Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.grey.shade400,
                      ),
                      onTap: menu.onTap,
                    ),
                    if (index < menus.length - 1)
                      Divider(
                        height: 1,
                        indent: size(68),
                        color: theme.dividerColor,
                      ),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuMeta {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;
  _MenuMeta({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });
}

class _FooterSection extends GetView<ProfileMuzzakiController> {
  const _FooterSection();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size(16)),
      sliver: SliverList.list(
        children: [
          SizedBox(height: size(20)),
          AppButton.primary(
            label: 'Keluar dari Akun',
            leadingIcon: HeroIcons.arrowRightOnRectangle,
            backgroundColor: AppColors.red,
            foregroundColor: Colors.white,
            onPressed: controller.logout,
          ),
        ],
      ),
    );
  }
}
