

import 'package:letmegrab_advert_app/core/utils/app_local_preference.dart';
import 'package:letmegrab_advert_app/injection_container.dart';

/// [ThemePrefs] for get and set theme mode
class ThemePrefs {
  ThemePrefs._();

  static final LocalPref _prefs = sl();
  static const _themeStatus = 'theme_status';

  static Future<void> setDarkTheme(bool value) async {
    await _prefs.setData<bool>(_themeStatus, value);
  }

  static Future<bool?> getTheme() async {
    return _prefs.getData<bool>(_themeStatus);
  }
}
