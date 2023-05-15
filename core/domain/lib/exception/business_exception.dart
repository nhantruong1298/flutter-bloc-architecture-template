import 'package:dio/dio.dart';
import 'package:domain/exception/business_exception_code.dart';

class BusinessException implements Exception {
  final BusinessExceptionCode businessExceptionCode;
  final String? debugMessage;
  final dynamic originalException;

  BusinessException({
    required this.businessExceptionCode,
    this.debugMessage,
    this.originalException,
  });

  @override
  String toString() {
    if (originalException is DioError) {
      final dioError = originalException as DioError;
      RequestOptions requestOptions = dioError.requestOptions;
      Response? response = dioError.response;

      return 'API error - businessExceptionCode: ${businessExceptionCode.toString()}, API path: ${requestOptions.path}, message: ${dioError.message}, API response: ${response?.data}';
    }

    return 'BusinessException(businessExceptionCode: ${businessExceptionCode.toString()}, originalException: ${originalException?.toString()}';
  }
}
