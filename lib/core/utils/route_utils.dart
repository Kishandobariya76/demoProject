import 'package:flutter/material.dart';
import 'package:letmegrab_advert_app/core/config/app_routes.dart';
import 'package:letmegrab_advert_app/features/app_info/presentation/pages/splash_page.dart';

class RouteUtils {
  static Map<String, Widget Function(BuildContext)> routes = {
    /// Splash Page
    AppRoutes.splashPage: (context) {
      return const SplashPage();
    },
  };
}
