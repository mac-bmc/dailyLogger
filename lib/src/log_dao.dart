import 'package:hive/hive.dart';

class LogDao {
  Future<Box> getBox() {
    return Hive.openBox('log_data');
  }

  Future<void> clearBox() async {
    final box = await getBox();
    await box.clear();
  }

  Future<void> saveData(List<Map<String, dynamic>> dataMap) async {
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

  Future<List<Map<String, dynamic>>> getAllData() async {
    var box = await getBox();
    return box.values.map((value) => value as Map<String, dynamic>).toList();
  }
}
