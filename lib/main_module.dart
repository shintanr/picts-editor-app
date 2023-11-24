import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:picts_editor_app/core/network/client.dart';
import 'package:picts_editor_app/module/home/repository/home_repository.dart';
import 'package:picts_editor_app/module/home/repository/home_repository_impl.dart';

class MainModule {
  static void init() {
    GetIt.I.registerSingleton(
      () => Dio().initClient("https://api.pexels.com/v1/"),
    );

    GetIt.I.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(client: GetIt.I.get()),
    );
  }
}
