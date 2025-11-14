// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_stats_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MonthlyStatsRequest _$MonthlyStatsRequestFromJson(Map<String, dynamic> json) =>
    MonthlyStatsRequest(
      year: (json['year'] as num?)?.toInt(),
      month: (json['month'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MonthlyStatsRequestToJson(
  MonthlyStatsRequest instance,
) => <String, dynamic>{'year': instance.year, 'month': instance.month};
