import 'package:domain/model/sample.dart';

abstract class SampleRepository {
  Future<SampleResult> sample(SampleParams params);
}
