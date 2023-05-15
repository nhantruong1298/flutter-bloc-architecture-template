import 'package:dio/dio.dart';
import 'package:domain/repositories/log_service.dart';

class ErrorLoggerInterceptor extends Interceptor {
  final LogService logger;

  ErrorLoggerInterceptor(this.logger);

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final String message;
    if (err.response != null) {
      message = err.response!.data.toString();
    } else {
      message = err.message ?? '';
    }

    logger.error(message, err);
    return handler.next(err);
  }
}
