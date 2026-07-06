/// Data negara untuk [AppInputPhone] — daftar statis awal tanpa dependency eksternal.
class PhoneCountryData {
  const PhoneCountryData({
    required this.code,
    required this.dialCode,
    required this.flag,
    required this.maxLength,
  });

  final String code;
  final String dialCode;
  final String flag;
  final int maxLength;
}

const kPhoneCountries = <String, PhoneCountryData>{
  'ID': PhoneCountryData(code: 'ID', dialCode: '+62', flag: '🇮🇩', maxLength: 12),
  'MY': PhoneCountryData(code: 'MY', dialCode: '+60', flag: '🇲🇾', maxLength: 11),
  'SG': PhoneCountryData(code: 'SG', dialCode: '+65', flag: '🇸🇬', maxLength: 8),
  'UK': PhoneCountryData(code: 'UK', dialCode: '+44', flag: '🇬🇧', maxLength: 11),
};
