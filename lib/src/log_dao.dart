import 'package:hive/hive.dart';

class LogDao {
  Future<Box> getBox() {
    return Hive.openBox('log_data');
  }

  Future<void> clearBox() async {
    final box = await getBox();
    await box.clear();
  }

  Future<void> saveData(List<Map<String, String>> dataMap) async {
    final box = await getBox();
    for (final data in dataMap) {
      await box.put(data.keys, data.values);
    }
  }

  Future<String?> getData(String key) async {
    final box = await getBox();
    final result = box.get(key);
    if (result == null) return null;
    return result;
  }
}
