part of 'sample_cubit.dart';

@freezed
class SampleState with _$SampleState {
  const factory SampleState.init() = SampleInitial;
  const factory SampleState.loading() = LoadingState;
  const factory SampleState.loaded(String userName) = SampleLoadedState;
  const factory SampleState.exception(dynamic exception) = SampleExceptionState;
}
