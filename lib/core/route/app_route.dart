import 'package:flutter/material.dart';
import 'package:picts_editor_app/module/detail_photo/presentation/detail_photo_screen.dart';
import 'package:picts_editor_app/module/edit_photo/presentation/edit_photo_screen.dart';
import 'package:picts_editor_app/module/get_started/presentation/get_started_screen.dart';
import 'package:picts_editor_app/module/home/presentation/home_screen.dart';
import 'package:picts_editor_app/module/search_photo/presentation/search_screen.dart';

import '/core/route/app_route_name.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.getStarted:
        return MaterialPageRoute(
          builder: (_) => const GetStartedScreen(),
          settings: settings,
        );

      case AppRouteName.home:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const HomeScreen(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteName.search:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const SearchScreen(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteName.detailPict:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const DetailPhotoScreen(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteName.editPict:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const EditPhotoScreen(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
    }

    return null;
  }
}