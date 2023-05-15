import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:domain/exception/business_exception.dart';
import 'package:domain/exception/business_exception_code.dart';
import 'package:domain/repositories/log_service.dart';
import 'package:flutter/foundation.dart';

class NetworkInterceptor extends Interceptor {
  LogService logger;
  Connectivity connectivity;
  NetworkInterceptor(this.logger, this.connectivity) : super();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    var connectivityResult = await (connectivity.checkConnectivity());
    if (!kDebugMode && connectivityResult == ConnectivityResult.none) {
      return handler.reject(OfflineError(requestOptions: options));
    }
    return handler.next(options);
  }
}

class OfflineError extends DioError {
  OfflineError({required RequestOptions requestOptions, response})
      : super(
          requestOptions: requestOptions,
          type: DioErrorType.unknown,
          error: BusinessException(
            businessExceptionCode: BusinessExceptionCode.NETWORK_ERROR,
            debugMessage: "Connection failed due to internet connection",
          ),
        );
}
