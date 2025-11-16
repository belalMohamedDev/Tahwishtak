import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:tahwishtak/feature/Budget/data/model/requestBody/monthly_stats_request.dart';
import 'package:tahwishtak/feature/Budget/data/model/response/monthly_stats_model.dart';

class MonthlyBudgetLocalDataSource {
  static const _boxName = 'monthlyBudgetBox';

  static Future<void> cacheMonthlyBudget(
    GetMonthlyStatsModel data,
    MonthlyStatsRequest monthlyStatsRequest
  ) async {
    final box = await Hive.openBox(_boxName);
    final jsonString = jsonEncode({
      'data': data.toJson(),
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'date': "${monthlyStatsRequest.year}-${monthlyStatsRequest.month}",
    });
    await box.put("${monthlyStatsRequest.year}-${monthlyStatsRequest.month}", jsonString);
  }

  static Future<GetMonthlyStatsModel?> getCachedMonthlyBudget(
    MonthlyStatsRequest monthlyStatsRequest
  ) async {
    try {
      final box = await Hive.openBox(_boxName);
      final cachedString = box.get("${monthlyStatsRequest.year}-${monthlyStatsRequest.month}");
      if (cachedString == null) return null;

      final cached = jsonDecode(cachedString);
      final cachedDate = cached['date'] as String?;

      if (cachedDate != "${monthlyStatsRequest.year}-${monthlyStatsRequest.month}") return null;

      return GetMonthlyStatsModel.fromJson(
        Map<String, dynamic>.from(cached['data']),
      );
    } catch (_) {
      return null;
    }
  }

  static Future<void> clearOldCaches() async {
    final box = await Hive.openBox(_boxName);
    await box.clear();
  }
}
