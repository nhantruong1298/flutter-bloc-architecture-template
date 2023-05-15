import 'package:data/entity/request/sample_request.dart';
import 'package:data/mapper/sample_data_mapper.dart';
import 'package:data/networking/service_manager.dart';
import 'package:domain/model/sample.dart';
import 'package:domain/repositories/sample_repository.dart';

class SampleRepositoryImpl extends SampleRepository {
  final ServiceManager _serviceManager;
  final SampleDataMapper _mapper;
  SampleRepositoryImpl(
    this._serviceManager,
    this._mapper,
  );

  @override
  Future<SampleResult> sample(SampleParams params) async {
    final response = await _serviceManager.sample(SampleRequest());

    return _mapper.mapSampleResponse(response);
  }
}
