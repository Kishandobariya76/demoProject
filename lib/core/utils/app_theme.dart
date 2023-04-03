import 'package:flutter/material.dart';
import 'package:letmegrab_advert_app/core/config/app_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    primarySwatch: AppColors.primaryMaterialCo,
  ); //ThemeData.light();

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.appBackGroundColor,
    //scaffoldBackgroundColor: LmgColors.scaffoldBg,
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.appBackGroundColor,
    ),
  ); //ThemeData.dark();
}
