import 'package:json_annotation/json_annotation.dart';

part 'sample_response.g.dart';

@JsonSerializable()
class SampleResponse {
  factory SampleResponse.fromJson(Map<String, dynamic> json) {
    return _$SampleResponseFromJson(json);
  }

  SampleResponse();

  Map<String, dynamic> toJson() => _$SampleResponseToJson(this);
}
