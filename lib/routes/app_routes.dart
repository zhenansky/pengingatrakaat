import 'package:flutter/material.dart';
import 'package:shalat_yuk/presentation/landing_page_screen/landing_page_screen.dart';
import 'package:shalat_yuk/presentation/home_page_screen/home_page_screen.dart';
import 'package:shalat_yuk/presentation/start_page_one_screen/start_page_one_screen.dart';
import 'package:shalat_yuk/presentation/calibration_page_screen/calibration_page_screen.dart';
import 'package:shalat_yuk/presentation/start_page_screen/start_page_screen.dart';
import 'package:shalat_yuk/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String landingPageScreen = '/landing_page_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String startPageOneScreen = '/start_page_one_screen';

  static const String calibrationPageScreen = '/calibration_page_screen';

  static const String startPageScreen = '/start_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    landingPageScreen: (context) => LandingPageScreen(),
    homePageScreen: (context) => HomePageScreen(),
    startPageOneScreen: (context) => StartPageOneScreen(),
    calibrationPageScreen: (context) => CalibrationPageScreen(),
    startPageScreen: (context) => StartPageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
