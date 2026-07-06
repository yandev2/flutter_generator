import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/formatter.dart';
import '../../../../domain/entity/response/payment_response_entity.dart';
import '../../../../theme/app_scale.dart';

Future<void> showPaymentInstructionDialog({
  required PaymentResponseEntity response,
  required String title,
  int? amount,
  String? paymentMethod,
  VoidCallback? onDone,
}) async {
  final method = (paymentMethod ?? response.payment?.method ?? '')
      .toLowerCase();
  final isPickup = method == 'pickup';
  final isTransfer = method == 'transfer';
  final isVA = method == 'va' || response.payment?.virtualAccount != null;
  final isCashLike = method == 'qris' || method == 'cash';
  final isVerified =
      (response.status ?? response.payment?.status ?? '').toLowerCase() ==
      'verified';

  final displayAmount = response.payment?.amount ?? amount;

  await Get.dialog<void>(
    AlertDialog(
      title: Text(isVerified ? '$title Berhasil' : 'Instruksi Pembayaran'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (response.invoiceNumber != null &&
                response.invoiceNumber!.isNotEmpty) ...[
              Text('Invoice / BSZ', style: Get.textTheme.labelSmall),
              SelectableText(
                response.invoiceNumber!,
                style: Get.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size(12)),
            ],
            if (displayAmount != null && displayAmount > 0) ...[
              Text('Nominal', style: Get.textTheme.labelSmall),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "${displayAmount.toRupiah()}",
                      style: Get.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  IconButton(
                    tooltip: 'Salin',
                    onPressed: () {
                      Clipboard.setData(
                        ClipboardData(text: displayAmount.toString()),
                      );
                      Get.snackbar('Disalin', 'Nominal disalin ke clipboard');
                    },
                    icon: const Icon(Icons.copy_rounded, size: 20),
                  ),
                ],
              ),
              SizedBox(height: size(12)),
            ],
            if (response.payment?.status != null ||
                response.status != null) ...[
              Text('Status', style: Get.textTheme.labelSmall),
              Text(response.payment?.status ?? response.status!),
              SizedBox(height: size(12)),
            ],
            if (isPickup) ...[
              const Text(
                'Permintaan penjemputan telah dicatat. Amil akan menghubungi Anda '
                'sesuai jadwal yang Anda isi.',
              ),
            ] else if (isVerified) ...[
              const Text(
                'Pembayaran telah terverifikasi. Terima kasih atas kebaikan Anda.',
              ),
            ] else if (isVA && response.payment != null) ...[
              _VirtualAccountSection(payment: response.payment!),
            ] else if (isTransfer && response.bankAccount != null) ...[
              _BankSection(bank: response.bankAccount!),
            ] else if (isCashLike &&
                (response.payment?.paymentUrl != null ||
                    response.paymentUrl != null)) ...[
              _PaymentQrSection(
                paymentUrl:
                    response.payment?.paymentUrl ?? response.paymentUrl!,
                createdAt: response.createdAt,
              ),
            ] else if (response.bankAccount != null) ...[
              _BankSection(bank: response.bankAccount!),
            ] else ...[
              const Text(
                'Transaksi berhasil dicatat. Silakan cek riwayat untuk status terbaru.',
              ),
            ],
          ],
        ),
      ),
      actions: [
        if (!isPickup &&
            !isVerified &&
            (response.payment?.paymentUrl != null ||
                response.paymentUrl != null))
          TextButton(
            onPressed: () => _openPaymentUrl(
              response.payment?.paymentUrl ?? response.paymentUrl!,
            ),
            child: const Text('Buka Pembayaran'),
          ),
        TextButton(
          onPressed: () {
            Get.back();
            onDone?.call();
          },
          child: const Text('Selesai'),
        ),
      ],
    ),
    barrierDismissible: false,
  );
}

class _VirtualAccountSection extends StatelessWidget {
  const _VirtualAccountSection({required this.payment});

  final PaymentDetailEntity payment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (payment.provider != null) ...[
          Text('Metode Pembayaran', style: Get.textTheme.labelSmall),
          Text(
            '${payment.provider} - ${payment.method ?? "VA"}',
            style: Get.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: size(12)),
        ],
        if (payment.virtualAccount != null) ...[
          Text('Nomor Virtual Account', style: Get.textTheme.labelSmall),
          Row(
            children: [
              Expanded(
                child: Text(
                  payment.virtualAccount!,
                  style: Get.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              IconButton(
                tooltip: 'Salin',
                onPressed: () {
                  Clipboard.setData(
                    ClipboardData(text: payment.virtualAccount!),
                  );
                  Get.snackbar('Disalin', 'Nomor VA disalin ke clipboard');
                },
                icon: const Icon(Icons.copy_rounded, size: 20),
              ),
            ],
          ),
          SizedBox(height: size(12)),
        ],
        if (payment.expiresAt != null) ...[
          Container(
            padding: EdgeInsets.all(size(12)),
            decoration: BoxDecoration(
              color: Colors.orange.shade50,
              borderRadius: BorderRadius.circular(size(8)),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.timer_outlined,
                  color: Colors.orange.shade800,
                  size: 20,
                ),
                SizedBox(width: size(8)),
                Expanded(
                  child: Text(
                    'Bayar sebelum:\n${_parseIsoDate(payment.expiresAt)}',
                    style: Get.textTheme.bodySmall?.copyWith(
                      color: Colors.orange.shade900,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: size(12)),
        ],
        if (payment.note != null && payment.note!.isNotEmpty) ...[
          Text(
            payment.note!,
            style: Get.textTheme.bodySmall?.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: size(12)),
        ],
      ],
    );
  }
}

class _PaymentQrSection extends StatelessWidget {
  const _PaymentQrSection({required this.paymentUrl, this.createdAt});

  final String paymentUrl;
  final String? createdAt;

  @override
  Widget build(BuildContext context) {
    final expiry = _estimatedExpiry(createdAt);
    final qrSize = size(200).clamp(160.0, 240.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Scan QRIS di bawah ini untuk menyelesaikan pembayaran.',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: size(12)),
        Center(
          child: Container(
            padding: EdgeInsets.all(size(12)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(size(8)),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: QrImageView(
              data: paymentUrl,
              version: QrVersions.auto,
              size: qrSize,
              backgroundColor: Colors.white,
              errorCorrectionLevel: QrErrorCorrectLevel.M,
            ),
          ),
        ),
        if (expiry != null) ...[
          SizedBox(height: size(12)),
          Text(
            'Estimasi batas waktu: $expiry',
            textAlign: TextAlign.center,
            style: Get.textTheme.bodySmall?.copyWith(
              color: Colors.orange.shade800,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
        SizedBox(height: size(8)),
        Center(
          child: TextButton.icon(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: paymentUrl));
              Get.snackbar('Disalin', 'Tautan pembayaran disalin ke clipboard');
            },
            icon: const Icon(Icons.copy_rounded, size: 18),
            label: const Text('Salin tautan pembayaran'),
          ),
        ),
      ],
    );
  }
}

class _BankSection extends StatelessWidget {
  const _BankSection({required this.bank});

  final BankAccountInfoEntity bank;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Transfer ke rekening berikut:'),
        SizedBox(height: size(10)),
        if (bank.bankName != null) _copyRow('Bank', bank.bankName!),
        if (bank.accountNumber != null)
          _copyRow('No. Rekening', bank.accountNumber!),
        if (bank.accountName != null) _copyRow('Atas Nama', bank.accountName!),
      ],
    );
  }

  Widget _copyRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: size(8)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: Get.textTheme.labelSmall),
                Text(value, style: Get.textTheme.bodyMedium),
              ],
            ),
          ),
          IconButton(
            tooltip: 'Salin',
            onPressed: () {
              Clipboard.setData(ClipboardData(text: value));
              Get.snackbar('Disalin', '$label disalin ke clipboard');
            },
            icon: const Icon(Icons.copy_rounded, size: 20),
          ),
        ],
      ),
    );
  }
}

String? _estimatedExpiry(String? createdAt) {
  if (createdAt == null || createdAt.isEmpty) return null;
  try {
    final created = DateTime.parse(createdAt).toLocal();
    final expiry = created.add(const Duration(hours: 24));
    return _formatDate(expiry);
  } catch (_) {
    return null;
  }
}

String? _parseIsoDate(String? isoString) {
  if (isoString == null || isoString.isEmpty) return null;
  try {
    final date = DateTime.parse(isoString).toLocal();
    return _formatDate(date);
  } catch (_) {
    return null;
  }
}

String _formatDate(DateTime date) {
  final day = date.day.toString().padLeft(2, '0');
  final month = date.month.toString().padLeft(2, '0');
  final year = date.year;
  final hour = date.hour.toString().padLeft(2, '0');
  final minute = date.minute.toString().padLeft(2, '0');
  return '$day/$month/$year $hour:$minute WIB';
}

Future<void> _openPaymentUrl(String url) async {
  final uri = Uri.tryParse(url);
  if (uri == null) {
    Get.snackbar('Gagal', 'URL pembayaran tidak valid.');
    return;
  }
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    Get.snackbar('Gagal', 'Tidak dapat membuka halaman pembayaran.');
  }
}
