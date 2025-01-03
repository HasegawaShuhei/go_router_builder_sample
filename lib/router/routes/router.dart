import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/router/navigator_key.dart';
import 'package:go_router_builder_sample/ui/screen/login_screen.dart';
import 'package:go_router_builder_sample/ui/screen/root_1_2_screen.dart';
import 'package:go_router_builder_sample/ui/screen/root_1_screen.dart';
import 'package:go_router_builder_sample/ui/screen/root_2_screen.dart';
import 'package:go_router_builder_sample/ui/screen/root_3_screen.dart';
import 'package:go_router_builder_sample/ui/screen/root_screen.dart';

part 'router.g.dart';

@TypedGoRoute<LoginRoute>(path: LoginRoute.path)
class LoginRoute extends GoRouteData {
  const LoginRoute();

  static const path = '/login';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}

@TypedStatefulShellRoute<RootRoute>(
  branches: [
    // TODO: pathを共通化するためにbranchディレクトリにしてもいいかも
    TypedStatefulShellBranch<Root1Branch>(
      routes: [
        TypedGoRoute<Root1Route>(
          path: Root1Route.path,
          routes: [
            TypedGoRoute<Root12Route>(
              path: Root12Route.path,
            ),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<Root2Branch>(
      routes: [
        TypedGoRoute<Root2Route>(
          path: '/${Root2Route.path}',
        ),
      ],
    ),
    TypedStatefulShellBranch<Root3Branch>(
      routes: [
        TypedGoRoute<Root3Route>(
          path: '/${Root3Route.path}',
        ),
      ],
    ),
  ],
)
class RootRoute extends StatefulShellRouteData {
  const RootRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return navigationShell;
  }

  static Widget $navigatorContainerBuilder(
    BuildContext context,
    StatefulNavigationShell navigationShell,
    List<Widget> children,
  ) {
    return RootScreen(
      navigationShell: navigationShell,
      children: children,
    );
  }
}

// @TypedGoRoute<Root12Route>(
//   path: Root12Route.path,
// )
// class Root12Route extends GoRouteData {
//   const Root12Route();

//   static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

//   static const path = '/2';
//   static const fullPath = '/2';

//   @override
//   Widget build(BuildContext context, GoRouterState state) {
//     return const Root12Screen();
//   }
// }

