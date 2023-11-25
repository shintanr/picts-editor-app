import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

extension DioExtension on Dio {
  Dio initClient(String baseUrl) {
    options.baseUrl = baseUrl;
    options.connectTimeout = Duration(seconds: 30);
    options.receiveTimeout = Duration(seconds: 30);
    options.sendTimeout = Duration(milliseconds: 1800000);

    if (kDebugMode) interceptors.add(LogInterceptor(responseBody: true));
    return this;
  }
}
