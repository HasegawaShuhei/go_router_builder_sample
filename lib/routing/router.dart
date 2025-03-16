import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/ui/screen/login/login_screen.dart';
import 'package:go_router_builder_sample/ui/screen/home/home_screen.dart';
import 'package:go_router_builder_sample/ui/screen/task/task_screen.dart';
import 'package:go_router_builder_sample/ui/screen/mypage/mypage_screen.dart';
import 'package:go_router_builder_sample/ui/screen/root/root_screen.dart';
import 'package:go_router_builder_sample/routing/navigator_key.dart';
import 'package:go_router_builder_sample/routing/refresh_listenable.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
    debugLogDiagnostics: kDebugMode,
    navigatorKey: rootNavigatorKey,
    initialLocation: '/home',
    refreshListenable: ref.watch(refreshListenableProvider.notifier),
    routes: [
      ...$appRoutes,
    ],
  );
}

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
    TypedStatefulShellBranch<HomeBranch>(
      routes: [
        TypedGoRoute<HomeRoute>(
          path: '/${HomeRoute.path}',
        ),
      ],
    ),
    TypedStatefulShellBranch<TaskBranch>(
      routes: [
        TypedGoRoute<TaskRoute>(
          path: '/${TaskRoute.path}',
        ),
      ],
    ),
    TypedStatefulShellBranch<SettingsBranch>(
      routes: [
        TypedGoRoute<SettingsRoute>(
          path: '/${SettingsRoute.path}',
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
