import 'package:json_annotation/json_annotation.dart';

part 'sample_request.g.dart';

@JsonSerializable()
class SampleRequest {
  factory SampleRequest.fromJson(Map<String, dynamic> json) {
    return _$SampleRequestFromJson(json);
  }

  SampleRequest();

  Map<String, dynamic> toJson() => _$SampleRequestToJson(this);
}
