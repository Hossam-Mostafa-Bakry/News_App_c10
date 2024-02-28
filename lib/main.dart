import 'package:flutter/material.dart';
import 'package:news_c10_sun/core/confige/application_theme_manager.dart';
import 'package:news_c10_sun/core/confige/pages_route_name.dart';
import 'package:news_c10_sun/core/confige/routes.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ApplicationThemeManager.applicationThemeData,
      themeMode: ThemeMode.light,
      initialRoute: PagesRouteName.initial,
      onGenerateRoute: Routes.onGenerateRoutes,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
    );
  }
}
