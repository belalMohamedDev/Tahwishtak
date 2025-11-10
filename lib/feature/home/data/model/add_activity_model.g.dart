// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddActivityModel _$AddActivityModelFromJson(Map<String, dynamic> json) =>
    AddActivityModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AddActivityData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddActivityModelToJson(AddActivityModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

AddActivityData _$AddActivityDataFromJson(Map<String, dynamic> json) =>
    AddActivityData(
      user: json['user'] as String?,
      dailyActivity: json['dailyActivity'] as String?,
      type: json['type'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      sId: json['sId'] as String?,
      time: json['time'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$AddActivityDataToJson(AddActivityData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'dailyActivity': instance.dailyActivity,
      'type': instance.type,
      'price': instance.price,
      'sId': instance.sId,
      'time': instance.time,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
