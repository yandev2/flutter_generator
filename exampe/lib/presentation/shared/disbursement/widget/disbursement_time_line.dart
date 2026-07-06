import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/ui/card/card_style_4.dart';
import '../../../../core/ui/theme/card_style_4_theme.dart';
import '../../../../core/utils/formatter.dart';
import '../../../../domain/entity/response/disbursement_item_list_entity.dart';
import '../../../../theme/app_scale.dart';

class DisbursementTimeLine extends StatelessWidget {
  const DisbursementTimeLine({
    super.key,
    this.item,
    required this.isLast,
    this.onTap,
    this.isLoading = false,
  });

  final DisbursementItemListEntity? item;
  final bool isLast;
  final VoidCallback? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final parsedDate = item?.createdAt != null ? DateTime.tryParse(item!.createdAt!) : null;
    const monthLabels = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'Mei',
      'Jun',
      'Jul',
      'Agu',
      'Sep',
      'Okt',
      'Nov',
      'Des',
    ];

    return Skeletonizer(
      enabled: isLoading,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: size(36),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${parsedDate?.day ?? 1}',
                    style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                    maxLines: 1,
                  ),
                  Text(
                    monthLabels[(parsedDate?.month ?? 1) - 1],
                    style: theme.textTheme.labelSmall,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '${parsedDate?.year ?? DateTime.now().year}',
                    style: theme.textTheme.labelSmall,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: size(4)),
                Skeleton.replace(
                  replacement: Bone(
                    height: size(16),
                    width: size(16),
                    borderRadius: BorderRadius.circular(300),
                  ),
                  child: Icon(
                    Icons.radio_button_checked,
                    color: theme.primaryColor,
                    size: size(16),
                  ),
                ),
                if (!isLast)
                  Expanded(
                    child: Container(
                      width: 1.5,
                      color: isLoading
                          ? theme.dividerColor.withValues(alpha: 0.1)
                          : theme.primaryColor,
                    ),
                  ),
              ],
            ),
            SizedBox(width: size(8)),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: size(16)),
                child: CardStyle4.network(
                  isLoading: isLoading,
                  imageUrl: "${item?.proofUrl}",
                  title: item?.mustahik?.name ?? '-',
                  referenceId: item?.updatedAt?.toDateId() ?? '-',
                  location: item?.upz ?? '-',
                  checkInLabel: "Sumber anggaran",
                  checkInDate: item?.fundType ?? '-',
                  status: CardStyle4Status(
                    label: item?.mustahik?.asnafCategory ?? '-',
                    color: theme.colorScheme.secondary,
                  ),
                  onTap: onTap,
                  margin: EdgeInsets.only(bottom: size(5), top: size(5)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
