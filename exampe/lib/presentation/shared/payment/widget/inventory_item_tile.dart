import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/ui/button/app_button.dart';
import '../../../../core/ui/input/app_input.dart';
import '../../../../core/ui/input/app_input_currency.dart';
import '../../../../core/ui/theme/app_button_theme.dart';
import '../../../../core/ui/theme/app_input_theme.dart';
import '../../../../domain/entity/response/inventory_item_entity.dart';
import '../../../../theme/app_scale.dart';

class InventoryItemTile extends StatefulWidget {
  const InventoryItemTile({
    super.key,
    required this.item,
    required this.theme,
    required this.onAdd,
    this.isLoading,
  });

  final InventoryItemEntity item;
  final ThemeData theme;
  final RxBool? isLoading;
  final void Function(double qty, double lineValue) onAdd;

  @override
  State<InventoryItemTile> createState() => _InventoryItemTileState();
}

class _InventoryItemTileState extends State<InventoryItemTile> {
  final TextEditingController _qtyCtrl = TextEditingController(text: '1');
  final TextEditingController _valueCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Skeletonizer(
        enabled: widget.isLoading?.value ?? false,
        child: Container(
          margin: EdgeInsets.only(bottom: size(10)),
          padding: EdgeInsets.all(size(12)),
          decoration: BoxDecoration(
            color: widget.theme.cardColor,
            borderRadius: BorderRadius.circular(size(12)),
            border: Border.all(color: widget.theme.dividerColor),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.item.name ?? '-',
                style: widget.theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Satuan: ${widget.item.uom ?? '-'}',
                style: widget.theme.textTheme.labelSmall,
              ),
              SizedBox(height: size(10)),
              Row(
                children: [
                  Expanded(
                    child: AppInput(
                      controller: _qtyCtrl,
                      keyboardType: TextInputType.number,
                      hint: 'Qty',
                      style: AppInputTheme.of(context).copyWith(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: size(10),
                          vertical: size(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: size(8)),
                  Expanded(
                    flex: 3,
                    child: AppInputCurrency(
                      controller: _valueCtrl,
                      hint: 'Estimasi Nilai (Rp)',
                      style: AppInputTheme.of(context).copyWith(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: size(10),
                          vertical: size(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: size(10)),
              SizedBox(
                child: AppButton.primary(
                  label: 'Tambahkan',
                  onPressed: () {
                    final qty = double.tryParse(_qtyCtrl.text) ?? 1;
                    final valStr = _valueCtrl.text.replaceAll(
                      RegExp(r'[^0-9]'),
                      '',
                    );
                    final val = double.tryParse(valStr) ?? 0;
                    widget.onAdd(qty, val);
                  },
                  leadingIcon: HeroIcons.plus,
                  expand: false,
                  style: AppButtonTheme.of(
                    context,
                  ).copyWith(borderRadius: size(10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _qtyCtrl.dispose();
    _valueCtrl.dispose();
    super.dispose();
  }
}
