import 'package:get_it/get_it.dart';
import 'package:presentation/injector/setup_injector.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  $initGetIt(getIt);
}
