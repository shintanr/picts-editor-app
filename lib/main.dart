import 'package:flutter/material.dart';
import 'package:photo_editor/core/route/app_route.dart';
import 'package:photo_editor/core/route/app_route_name.dart';
import 'package:photo_editor/core/theme/app_theme.dart';
import 'package:photo_editor/main_module.dart';

void main() {
  MainModule.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Picts App",
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      initialRoute: AppRouteName.splashScreen,
      onGenerateRoute: AppRoute.generate,
    );
  }
}
