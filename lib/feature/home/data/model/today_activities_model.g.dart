// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_activities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodayActivitiesModel _$TodayActivitiesModelFromJson(
  Map<String, dynamic> json,
) => TodayActivitiesModel(
  status: json['status'] as bool?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : TodayActivitiesData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TodayActivitiesModelToJson(
  TodayActivitiesModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

TodayActivitiesData _$TodayActivitiesDataFromJson(Map<String, dynamic> json) =>
    TodayActivitiesData(
        currentBalance: (json['currentBalance'] as num?)?.toDouble(),
        totalSpent: (json['totalSpent'] as num?)?.toDouble(),
        activities: (json['activities'] as List<dynamic>?)
            ?.map((e) => TodayActivities.fromJson(e as Map<String, dynamic>))
            .toList(),
      )
      ..startingBalance = (json['startingBalance'] as num?)?.toDouble()
      ..date = json['date'] as String?;

Map<String, dynamic> _$TodayActivitiesDataToJson(
  TodayActivitiesData instance,
) => <String, dynamic>{
  'currentBalance': instance.currentBalance,
  'totalSpent': instance.totalSpent,
  'startingBalance': instance.startingBalance,
  'date': instance.date,
  'activities': instance.activities,
};

TodayActivities _$TodayActivitiesFromJson(Map<String, dynamic> json) =>
    TodayActivities(
      sId: json['_id'] as String?,
      user: json['user'] as String?,
      dailyActivity: json['dailyActivity'] as String?,
      type: json['type'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      time: json['time'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$TodayActivitiesToJson(TodayActivities instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'user': instance.user,
      'dailyActivity': instance.dailyActivity,
      'type': instance.type,
      'price': instance.price,
      'time': instance.time,
      'createdAt': instance.createdAt,
    };
