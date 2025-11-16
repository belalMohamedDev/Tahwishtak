// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMonthlyStatsModel _$GetMonthlyStatsModelFromJson(
  Map<String, dynamic> json,
) => GetMonthlyStatsModel(
  status: json['status'] as bool?,
  message: json['message'] as String?,
  totalSpentInMonth: (json['totalSpentInMonth'] as num?)?.toDouble(),
  totalCurrentBalance: (json['totalCurrentBalance'] as num?)?.toDouble(),
  totalStartingBalance: (json['totalStartingBalance'] as num?)?.toDouble(),
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => GetMonthlyStatsData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetMonthlyStatsModelToJson(
  GetMonthlyStatsModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'totalStartingBalance': instance.totalStartingBalance,
  'totalCurrentBalance': instance.totalCurrentBalance,
  'totalSpentInMonth': instance.totalSpentInMonth,
  'data': instance.data,
};

GetMonthlyStatsData _$GetMonthlyStatsDataFromJson(Map<String, dynamic> json) =>
    GetMonthlyStatsData(
      category: json['category'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      percent: (json['percent'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GetMonthlyStatsDataToJson(
  GetMonthlyStatsData instance,
) => <String, dynamic>{
  'category': instance.category,
  'amount': instance.amount,
  'percent': instance.percent,
};
