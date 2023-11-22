import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:picts_editor_app/core/network/client.dart';

class MainModule {
  static void init() {
    GetIt.I.registerSingleton(
      () => Dio().initClient("https://api.pexels.com/v1/"),
    );
  }
}
