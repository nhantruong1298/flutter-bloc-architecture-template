import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_state.dart';
part 'sample_cubit.freezed.dart';

class SampleCubit extends Cubit<SampleState> {
  SampleCubit() : super(const SampleInitial());

  void onUserNameChanged(String userName) {
    emit(SampleLoadedState(userName));
  }
}
