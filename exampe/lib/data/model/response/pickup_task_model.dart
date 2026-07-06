import '../../../domain/entity/response/pickup_task_entity.dart';

class PickupTaskModel {
  final int? id;
  final String? type;
  final String? requestCode;
  final String? status;
  final String? pickupType;
  final String? muzakkiPhone;
  final String? muzzaki;
  final String? description;
  final String? address;
  final String? scheduledDate;
  final String? scheduledTimeNote;
  final String? createdAt;
  final List<PickupTaskNaturaItemModel>? naturaItems;
  final int? estimatedAmount;
  final double? latitude;
  final double? longitude;
  final String? notes;

  PickupTaskModel({
    this.id,
    this.type,
    this.requestCode,
    this.status,
    this.pickupType,
    this.muzakkiPhone,
    this.muzzaki,
    this.description,
    this.address,
    this.scheduledDate,
    this.scheduledTimeNote,
    this.createdAt,
    this.naturaItems,
    this.estimatedAmount,
    this.latitude,
    this.longitude,
    this.notes,
  });

  factory PickupTaskModel.fromJson(Map<String, dynamic> json) {
    return PickupTaskModel(
      id: json['id'] as int?,
      type: json['type'] as String?,
      requestCode: json['requestCode'] as String?,
      status: json['status'] as String?,
      pickupType: json['pickupType'] as String?,
      muzakkiPhone: json['muzakkiPhone'] as String?,
      muzzaki: json['muzzaki'] as String?,
      description: json['description'] as String?,
      address: json['address'] as String?,
      scheduledDate: json['scheduledDate'] as String?,
      scheduledTimeNote: json['scheduledTimeNote'] as String?,
      createdAt: json['createdAt'] as String?,
      naturaItems: (json['naturaItems'] as List<dynamic>?)
          ?.map((e) => PickupTaskNaturaItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      estimatedAmount: json['estimatedAmount'] as int?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'requestCode': requestCode,
      'status': status,
      'pickupType': pickupType,
      'muzakkiPhone': muzakkiPhone,
      'muzzaki': muzzaki,
      'description': description,
      'address': address,
      'scheduledDate': scheduledDate,
      'scheduledTimeNote': scheduledTimeNote,
      'createdAt': createdAt,
      'naturaItems': naturaItems?.map((e) => e.toJson()).toList(),
      'estimatedAmount': estimatedAmount,
      'latitude': latitude,
      'longitude': longitude,
      'notes': notes,
    };
  }

  PickupTaskEntity toEntity() {
    return PickupTaskEntity(
      id: id,
      type: type,
      requestCode: requestCode,
      status: status,
      pickupType: pickupType,
      muzakkiPhone: muzakkiPhone,
      muzzaki: muzzaki,
      description: description,
      address: address,
      scheduledDate: scheduledDate,
      scheduledTimeNote: scheduledTimeNote,
      createdAt: createdAt,
      naturaItems: naturaItems?.map((e) => e.toEntity()).toList(),
      estimatedAmount: estimatedAmount,
      latitude: latitude,
      longitude: longitude,
      notes: notes,
    );
  }
}

class PickupTaskNaturaItemModel {
  final int? id;
  final String? name;
  final int? quantity;
  final String? uom;
  final String? photoUrl;
  final num? lineValue;

  PickupTaskNaturaItemModel({
    this.id,
    this.name,
    this.quantity,
    this.uom,
    this.photoUrl,
    this.lineValue,
  });

  factory PickupTaskNaturaItemModel.fromJson(Map<String, dynamic> json) {
    return PickupTaskNaturaItemModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      quantity: json['quantity'] as int?,
      uom: json['uom'] as String?,
      photoUrl: json['photoUrl'] as String?,
      lineValue: json['lineValue'] as num?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'quantity': quantity,
      'uom': uom,
      'photoUrl': photoUrl,
      'lineValue': lineValue,
    };
  }

  PickupTaskNaturaItemEntity toEntity() {
    return PickupTaskNaturaItemEntity(
      id: id,
      name: name,
      quantity: quantity,
      uom: uom,
      photoUrl: photoUrl,
      lineValue: lineValue,
    );
  }
}
