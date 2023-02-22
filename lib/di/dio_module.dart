import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DIOModule {
  @Named("enableLog")
  bool get enableLog => false;

  @lazySingleton
  Dio dio({@Named('enableLog') bool enableLog = false}) {
    final dio = Dio(
      BaseOptions(
        connectTimeout: 6000,
        receiveTimeout: 6000,
        contentType: 'application/json',
        receiveDataWhenStatusError: true,
      ),
    );

    if (enableLog) {
      final prettyDioLogger = PrettyDioLogger(
        requestHeader: false,
        queryParameters: false,
        requestBody: false,
        responseHeader: false,
        responseBody: true,
        error: true,
        showProcessingTime: true,
        showCUrl: true,
        canShowLog: kDebugMode,
      );
      dio.interceptors.add(prettyDioLogger);
    }
    final retryInterceptor = RetryInterceptor(
      dio: dio,
      retries: 3,
      retryDelays: const [Duration.zero],
    );
    dio.interceptors.add(retryInterceptor);
    return dio;
  }
}
