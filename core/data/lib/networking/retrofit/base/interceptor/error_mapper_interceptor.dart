import 'package:data/enum/http_status_code.dart';
import 'package:dio/dio.dart';
import 'package:domain/exception/business_exception.dart';
import 'package:domain/exception/business_exception_code.dart';

typedef ErrorMapperHandler = BusinessException Function(DioError errorResponse);

class ErrorMapperInterceptor extends Interceptor {
  final ErrorMapperHandler mapper;
  ErrorMapperInterceptor(this.mapper);

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    BusinessException businessException;
    switch (err.type) {
      case DioErrorType.cancel:
        businessException = BusinessException(
          businessExceptionCode: BusinessExceptionCode.UNEXPECTED_ERROR,
          debugMessage: "Request was cancelled",
          originalException: err,
        );
        break;
      case DioErrorType.connectionTimeout:
      case DioErrorType.receiveTimeout:
      case DioErrorType.sendTimeout:
        businessException = BusinessException(
          originalException: err,
          businessExceptionCode: BusinessExceptionCode.REQUEST_TIME_OUT,
        );
        break;

      case DioErrorType.badResponse:
      default:
        businessException = _handleAPIException(err);
        break;
    }

    return handler.next(APIError(
      requestOptions: err.requestOptions,
      error: businessException,
    ));
  }

  BusinessException _handleAPIException(DioError err) {
    final Map<int, BusinessException Function(DioError)> errorMapper = {
      HTTP_TOO_MANY_REQUEST_CODE: (DioError response) => BusinessException(
            businessExceptionCode: BusinessExceptionCode.UNEXPECTED_ERROR,
            debugMessage: "Server is unavailable. Please try again later",
            originalException: err,
          ),
      HTTP_INTERNAL_SERVER_ERROR_CODE: (DioError response) => BusinessException(
            businessExceptionCode: BusinessExceptionCode.UNEXPECTED_ERROR,
            debugMessage: "Server is unavailable. Please try again later",
            originalException: err,
          ),
      HTTP_SERVICE_UNAVAILABLE_CODE: (dynamic response) => BusinessException(
            businessExceptionCode: BusinessExceptionCode.UNEXPECTED_ERROR,
            debugMessage: "Server is unavailable. Please try again later",
            originalException: err,
          ),
      HTTP_UNAUTHORIZED_CODE: (response) => BusinessException(
            businessExceptionCode: BusinessExceptionCode.UNAUTHORIZED,
            originalException: err,
          ),
      HTTP_NOT_FOUND_CODE: (DioError error) {
        final response = error.response;
        if (response?.data != null) {
          if (response!.data is String) {
            return BusinessException(
              businessExceptionCode: BusinessExceptionCode.UNEXPECTED_ERROR,
              debugMessage: "Unexpected error occurred: ${response.data}",
              originalException: err,
            );
          }

          return mapper(error);
        } else {
          return BusinessException(
            businessExceptionCode: BusinessExceptionCode.UNEXPECTED_ERROR,
            debugMessage: "Unexpected error occurred",
            originalException: err,
          );
        }
      },
    };

    final statusCode = err.response?.statusCode ?? 0;

    return errorMapper[statusCode]?.call(err) ?? mapper(err);
  }
}

class APIError extends DioError {
  APIError(
      {required RequestOptions requestOptions,
      required BusinessException error})
      : super(requestOptions: requestOptions, error: error);
}
