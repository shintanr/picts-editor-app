import 'package:flutter/material.dart';
import 'package:picts_editor_app/core/route/app_route.dart';
import 'package:picts_editor_app/core/route/app_route_name.dart';
import 'package:picts_editor_app/main_module.dart';

void main() {
  MainModule.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Photo Editor App",
      initialRoute: AppRouteName.getStarted,
      onGenerateRoute: AppRoute.generate,
    );
  }
}
