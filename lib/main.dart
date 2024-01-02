import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/scheduler.dart';
import 'package:shalat_yuk/theme/theme_helper.dart';
import 'package:shalat_yuk/routes/app_routes.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  // ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'shalat_yuk',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.landingPageScreen,
      routes: AppRoutes.routes,
    );
  }
}
