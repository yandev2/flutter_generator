import '../../domain/entity/donatur_entity.dart';

class DonaturModel {
  final int? id;
  final String? name;
  final int? amount;
  final bool? isAnonymous;
  final String? date;
  final String? avatar;

  DonaturModel({this.id, this.name, this.amount, this.isAnonymous, this.date, this.avatar});

  factory DonaturModel.fromJson(Map<String, dynamic> json) {
    return DonaturModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      amount: json['amount'] != null
          ? (json['amount'] is String
                ? int.tryParse(json['amount'])
                : (json['amount'] as num).toInt())
          : null,
      isAnonymous: json['isAnonymous'] as bool?,
      date: json['date'] as String?,
      avatar: json['avatar'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'amount': amount,
      'isAnonymous': isAnonymous,
      'date': date,
      'avatar': avatar,
    };
  }

  factory DonaturModel.fromEntity(DonaturEntity entity) {
    return DonaturModel(
      id: entity.id,
      name: entity.name,
      amount: entity.amount,
      isAnonymous: entity.isAnonymous,
      date: entity.date,
      avatar: entity.avatar,
    );
  }

  DonaturEntity toEntity() {
    return DonaturEntity(
      id: id,
      name: name,
      amount: amount,
      isAnonymous: isAnonymous,
      date: date,
      avatar: avatar,
    );
  }
}
