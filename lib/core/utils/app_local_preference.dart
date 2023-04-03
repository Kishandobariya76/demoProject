import 'package:letmegrab_advert_app/core/local_db/db_helper.dart';
import 'package:letmegrab_advert_app/injection_container.dart';

class LocalPref {
  final DbHelper _dbHelper = sl();

  T? getData<T>(String key) {
    return _dbHelper.prefBox.get(key);
  }

  Future<bool> setData<T>(String key, T value) async {
    try {
      await _dbHelper.prefBox.put(key, value);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> clear() async {
    try {
      await _dbHelper.prefBox.clear();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> delete(String key) async {
    try {
      await _dbHelper.prefBox.delete(key);
      return true;
    } catch (e) {
      return false;
    }
  }
}
