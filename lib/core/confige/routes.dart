import 'package:flutter/material.dart';
import 'package:news_c10_sun/core/confige/pages_route_name.dart';
import 'package:news_c10_sun/pages/home/pages/home_view.dart';
import 'package:news_c10_sun/pages/settings/settings_view.dart';
import 'package:news_c10_sun/pages/splash/pages/splash_view.dart';

class Routes {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {

      case PagesRouteName.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );

      case PagesRouteName.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
          settings: settings,
        );
      case PagesRouteName.settingsView:
        return MaterialPageRoute(
          builder: (context) => const SettingsView(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
    }
  }
}
