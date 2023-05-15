import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:data/networking/retrofit/base/interceptor/error_logger_interceptor.dart';
import 'package:data/networking/retrofit/base/interceptor/error_mapper_interceptor.dart';
import 'package:data/networking/retrofit/base/interceptor/network_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:domain/exception/business_exception.dart';
import 'package:domain/exception/business_exception_code.dart';
import 'package:domain/repositories/log_service.dart';



abstract class BaseDio extends DioForNative {
  final LogService logger;

  BaseDio(this.logger, String environment) {
    interceptors.addAll([
      NetworkInterceptor(logger, Connectivity()),
      ErrorLoggerInterceptor(logger),
    ]);
  }
  
  @override
  Future<Response<T>> fetch<T>(RequestOptions requestOptions) async {
    try {
      final response = await super.fetch<T>(requestOptions);
      return response;
    } on DioError catch (e, stacktrace) {
      throw handleError(e, stacktrace);
    }
  }

  @override
  Future<Response<T>> request<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await super.request<T>(path,
          data: data,
          queryParameters: queryParameters,
          cancelToken: cancelToken,
          options: options,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);
      return response;
    } on DioError catch (e, stacktrace) {
      throw handleError(e, stacktrace);
    }
  }

  bool isKnownError(Exception e) {
    if (e is DioError) return e is OfflineError || e is APIError;
    return false;
  }

  BusinessException handleError(DioError error, StackTrace stackTrace) {
    if (isKnownError(error)) {
      return (error.error) as BusinessException;
    }

    return BusinessException(
        businessExceptionCode: BusinessExceptionCode.UNEXPECTED_ERROR,
        debugMessage: "Unexpected error",
        originalException: error);
  }
}
