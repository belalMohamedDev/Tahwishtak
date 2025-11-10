// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddActivityRequest _$AddActivityRequestFromJson(Map<String, dynamic> json) =>
    AddActivityRequest(
      type: json['type'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$AddActivityRequestToJson(AddActivityRequest instance) =>
    <String, dynamic>{'type': instance.type, 'price': instance.price};
