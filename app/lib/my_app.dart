import 'package:core/app_core.dart';
import 'package:flutter/widgets.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static void initConfig() {
    AppCore.initConfig();
  }

  @override
  Widget build(BuildContext context) {
    return AppCore.buildApplication();
  }
}
