import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:presentation/app/route_builder.dart';
import 'package:presentation/generated/l10n.dart';

class Application extends StatefulWidget {
  const Application({super.key});
  const Application._internal();

  static Application? _instance;

  static Application init() {
    _instance ??= const Application._internal();
    return _instance!;
  }

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  void initState() {
    super.initState();
    RouteBuilder.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: RouteBuilder.router,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('vi'), // Vietnamese
      ],
      localeResolutionCallback: _localeResolutionCallback,
    );
  }

  Locale? _localeResolutionCallback(
      Locale? locale, Iterable<Locale> supportedLocales) {
    final languageCode = locale?.languageCode;

    if (languageCode == 'vi') {
      return supportedLocales.last;
    }
    return supportedLocales.first;
  }
}
