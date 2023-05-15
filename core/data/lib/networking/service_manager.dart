import 'package:data/entity/request/sample_request.dart';
import 'package:data/entity/response/sample_response.dart';
import 'package:data/networking/retrofit/service/my_custom_dio.dart';
import 'package:data/networking/retrofit/service/my_service_api.dart';
import 'package:domain/repositories/log_service.dart';

class ServiceManager {
  ServiceManager._internal();
  static ServiceManager? _instance;

  late MyServiceAPI _myServiceAPI;
  late LogService loggerService;

  factory ServiceManager(
    LogService loggerService,
  ) {
    if (_instance != null) {
      return _instance!;
    }

    _instance = ServiceManager._internal();
    loggerService = loggerService;

    final myCustomDio = MyCustomDio(
      endPoint: 'https://sample.com',
      logger: loggerService,
      environment: 'debug',
    );

    _instance!._myServiceAPI = MyServiceAPI.create(myCustomDio);

    return _instance!;
  }

  Future<SampleResponse> sample(SampleRequest request) {
    return _myServiceAPI.sample(request);
  }
}
