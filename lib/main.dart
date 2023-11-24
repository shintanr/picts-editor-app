import 'package:flutter/material.dart';
import 'package:picts_editor_app/core/route/app_route.dart';
import 'package:picts_editor_app/core/route/app_route_name.dart';
import 'package:picts_editor_app/core/theme/app_theme.dart';
import 'package:picts_editor_app/main_module.dart';

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
      initialRoute: AppRouteName.getStarted,
      onGenerateRoute: AppRoute.generate,
    );
  }
}