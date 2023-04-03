import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:letmegrab_advert_app/app/application.dart';
import 'package:letmegrab_advert_app/bootstrap.dart';
import 'package:letmegrab_advert_app/core/config/app_prefs_key.dart';
import 'package:letmegrab_advert_app/core/helpers/http_overrides.dart';
import 'package:letmegrab_advert_app/core/local_db/db_helper.dart';
import 'package:letmegrab_advert_app/core/user/user.dart';
import 'package:letmegrab_advert_app/core/utils/app_local_preference.dart';
import 'package:letmegrab_advert_app/features/app_info/presentation/pages/app_error_screen.dart';
import 'package:letmegrab_advert_app/injection_container.dart' as di;
import 'package:letmegrab_advert_app/injection_container.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  /// [AppFlutterErrorScreen] is the Custom error widget
  ErrorWidget.builder =
      (FlutterErrorDetails details) => AppFlutterErrorScreen(details: details);

  /// [di] is library prefix of [injection_container.dart]
  await di.setupLocator();
  DbHelper dbHelper = sl();
  await dbHelper.initHive();
  await Firebase.initializeApp();

  LocalPref prefs = sl();
  UserInfo.setLanguage = prefs.getData(PrefsKey.setLanguage);
  UserInfo.setLanguageCountryCode =
      prefs.getData(PrefsKey.setLanguageCountryCode);

  HttpOverrides.global = MyHttpOverrides();

  if(!kDebugMode) {
    // await dotenv.load(fileName: 'prod.env');
    await dotenv.load(fileName: 'dev.env');
  } else {
    await dotenv.load(fileName: 'dev.env');
  }

  bootstrap(builder: () => EasyLocalization(
    path: 'assets/locales',

    /// Default locale for the APP is English - United Kingdom
    startLocale: const Locale('en', 'UK'),
    supportedLocales: const <Locale>[
      /// You can find locale JSON files in assets/locales
      Locale('en', 'UK'),
      Locale('hi', 'IN'),
    ],
    child: const MyApp(),
  ),
  );
}
