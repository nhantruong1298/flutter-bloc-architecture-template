import 'package:presentation/app/application.dart';
import 'package:presentation/injector/all.dart';

class AppCore {
  static Application buildApplication() => Application.init();

  static void initConfig() {
    configureDependencies();
  }
}
