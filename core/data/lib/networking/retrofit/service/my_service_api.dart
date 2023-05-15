import 'package:data/entity/request/sample_request.dart';
import 'package:data/entity/response/sample_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'my_service_api.g.dart';

@RestApi()
abstract class MyServiceAPI {
  static MyServiceAPI create([Dio? client]) => _MyServiceAPI(client!);

  @POST("/")
  Future<SampleResponse> sample( @Body() SampleRequest request );
}
