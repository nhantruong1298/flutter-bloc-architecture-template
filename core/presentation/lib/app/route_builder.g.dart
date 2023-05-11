// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_builder.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $sampleRoute,
    ];

RouteBase get $sampleRoute => GoRouteData.$route(
      path: '/',
      factory: $SampleRouteExtension._fromState,
    );

extension $SampleRouteExtension on SampleRoute {
  static SampleRoute _fromState(GoRouterState state) => SampleRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}
