
import 'package:flutter/material.dart';
import 'package:letmegrab_advert_app/core/utils/app_local_preference.dart';
import 'package:letmegrab_advert_app/injection_container.dart';

/// [UserInfo] contains user data like
///
/// deviceID, search history, language, pin code etc..
class UserInfo {
  static final LocalPref _prefs = sl();

  static String deviceId = '';
  static String userName = 'user';
  static String? addressId;

  static String? setLanguage;
  static String? setLanguageCountryCode;

  static bool isDarkTheme = false;

  static Future<void> setUserData({bool? isLogin}) async {
    if (isLogin ?? false) {

    }
  }

  static bool get isLoggedIn {
    return false;
  }

  static String get getUserId {
    return '1';
  }


  static Future<void> logOut(BuildContext context) async {

  }
}
