import '../../domain/entity/response/zakat_type_entity.dart';

enum ZakatKind { maal, fitrah, profesi, emasPerak, tijarah }

enum ZakatInputType { currency, count }

class ZakatInputField {
  final String key;
  final String label;
  final String hint;
  final ZakatInputType type;
  final bool subtract;
  final bool required;
  final String? unitSuffix;

  const ZakatInputField({
    required this.key,
    required this.label,
    required this.hint,
    this.type = ZakatInputType.currency,
    this.subtract = false,
    this.required = false,
    this.unitSuffix,
  });
}

abstract class ZakatConstants {
  static const String nisabTypeGold = 'gold';
  static const String nisabTypeSilver = 'silver';
  static const String nisabTypeRice = 'rice';

  /// Memetakan [ZakatTypeEntity] dari API ke [ZakatKind].
  /// Prioritas: [slug] → fallback keyword [name].
  static ZakatKind resolveKind(ZakatTypeEntity type) {
    final slug = (type.slug ?? '').toLowerCase();
    if (slug.contains('fitrah')) return ZakatKind.fitrah;
    if (slug.contains('profesi')) return ZakatKind.profesi;
    if (slug.contains('emas') || slug.contains('perak')) {
      return ZakatKind.emasPerak;
    }
    if (slug.contains('tijarah')) return ZakatKind.tijarah;
    if (slug.contains('maal')) return ZakatKind.maal;

    final name = (type.name ?? '').toLowerCase();
    if (name.contains('fitrah')) return ZakatKind.fitrah;
    if (name.contains('profesi') || name.contains('penghasilan')) {
      return ZakatKind.profesi;
    }
    if (name.contains('emas') || name.contains('perak')) {
      return ZakatKind.emasPerak;
    }
    if (name.contains('tijarah') || name.contains('dagang')) {
      return ZakatKind.tijarah;
    }
    return ZakatKind.maal;
  }

  /// Skema input untuk tiap jenis zakat.
  static List<ZakatInputField> inputSchema(ZakatKind kind) {
    switch (kind) {
      case ZakatKind.maal:
        return const [
          ZakatInputField(
            key: 'totalHarta',
            label: 'Total Harta Simpanan',
            hint: '0',
            required: true,
          ),
        ];
      case ZakatKind.fitrah:
        return const [
          ZakatInputField(
            key: 'jumlahJiwa',
            label: 'Jumlah Jiwa',
            hint: '1',
            type: ZakatInputType.count,
            required: true,
            unitSuffix: 'jiwa',
          ),
        ];
      case ZakatKind.profesi:
        return const [
          ZakatInputField(
            key: 'penghasilanBulanan',
            label: 'Penghasilan per Bulan',
            hint: '0',
            required: true,
          ),
          ZakatInputField(key: 'penghasilanLain', label: 'Penghasilan Lain (opsional)', hint: '0'),
        ];
      case ZakatKind.emasPerak:
        return const [
          ZakatInputField(
            key: 'gramEmas',
            label: 'Berat Emas',
            hint: '0',
            type: ZakatInputType.count,
            unitSuffix: 'gram',
          ),
          ZakatInputField(
            key: 'gramPerak',
            label: 'Berat Perak',
            hint: '0',
            type: ZakatInputType.count,
            unitSuffix: 'gram',
          ),
        ];
      case ZakatKind.tijarah:
        return const [
          ZakatInputField(key: 'asetDagang', label: 'Nilai Aset Dagang', hint: '0', required: true),
          ZakatInputField(key: 'laba', label: 'Laba Bersih (opsional)', hint: '0'),
          ZakatInputField(key: 'piutang', label: 'Piutang Lancar (opsional)', hint: '0'),
          ZakatInputField(
            key: 'utang',
            label: 'Utang Jatuh Tempo (opsional)',
            hint: '0',
            subtract: true,
          ),
        ];
    }
  }
}
