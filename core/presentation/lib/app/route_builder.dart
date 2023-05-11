import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/features/sample/views/sample_screen.dart';

part 'route_builder.g.dart';

class RouteBuilder {
  static GoRouter get router {
    assert(
      _router != null,
      'Router is not initialized. Please call initializeRouter() first.',
    );
    return _router!;
  }

  static GoRouter? _router;

  static void init() {
    if (_router != null) return;
    _router = GoRouter(routes: $appRoutes);
  }
}

// For details setting go router builder , see
// https://pub.dev/packages/go_router_builder


//********************** Settings code gen here **********************
//********************** SAMPLE ROUTE **********************
@TypedGoRoute<SampleRoute>(
  path: '/',
)
class SampleRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SampleScreen();
}
