import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:tahwishtak/feature/Budget/data/model/response/monthly_stats_model.dart';

class MonthlyBudgetLocalDataSource {
  static const _boxName = 'monthlyBudgetBox';

  static Future<void> cacheMonthlyBudget(
    GetMonthlyStatsModel data,
    String date,
  ) async {
    final box = await Hive.openBox(_boxName);
    final jsonString = jsonEncode({
      'data': data.toJson(),
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'date': date,
    });
    await box.put(date, jsonString);
  }

  static Future<GetMonthlyStatsModel?> getCachedMonthlyBudget(
    String date,
  ) async {
    try {
      final box = await Hive.openBox(_boxName);
      final cachedString = box.get(date);
      if (cachedString == null) return null;

      final cached = jsonDecode(cachedString);
      final cachedDate = cached['date'] as String?;

      if (cachedDate != date) return null;

      return GetMonthlyStatsModel.fromJson(
        Map<String, dynamic>.from(cached['data']),
      );
    } catch (_) {
      return null;
    }
  }

  static Future<void> clearOldCaches() async {
    final box = await Hive.openBox(_boxName);
    final todayKey = DateTime.now().toString().substring(0, 10);

    final keysToDelete = box.keys.where((key) => key != todayKey).toList();
    for (var key in keysToDelete) {
      await box.delete(key);
    }
  }
}
