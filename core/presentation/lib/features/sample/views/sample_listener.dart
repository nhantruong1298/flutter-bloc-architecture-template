part of 'sample_screen.dart';

extension SampleListener on _SampleScreenState {
  void listener(BuildContext context, SampleState state) {
    state.maybeWhen(
        exception: (exception) => showErrorDialog(exception),
        loading: () => toggleLoading(true),
        orElse: () {});
  }
}
