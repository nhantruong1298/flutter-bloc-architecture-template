import 'package:data/mapper/error_data_mapper.dart';
import 'package:data/networking/retrofit/base/base_dio.dart';
import 'package:data/networking/retrofit/base/interceptor/error_mapper_interceptor.dart';
import 'package:domain/repositories/log_service.dart';

class MyCustomDio extends BaseDio {
  MyCustomDio({
    required String endPoint,
    required LogService logger,
    required String environment,
  }) : super(logger, environment) {
    super.options.baseUrl = endPoint;

    super
        .interceptors
        .add(ErrorMapperInterceptor(ErrorDataMapper.mapException));
  }
}
