import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/ui/screen/login/login_screen.dart';
import 'package:go_router_builder_sample/ui/screen/home/home_screen.dart';
import 'package:go_router_builder_sample/ui/screen/task/task_details_screen.dart';
import 'package:go_router_builder_sample/ui/screen/task/task_screen.dart';
import 'package:go_router_builder_sample/ui/screen/mypage/mypage_screen.dart';
import 'package:go_router_builder_sample/ui/screen/root/root_screen.dart';
import 'package:go_router_builder_sample/routing/navigator_key.dart';
import 'package:go_router_builder_sample/routing/refresh_listenable.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';
part './routes/common_routes.dart';
part './routes/home_shell_branch_routes.dart';
part './routes/task_shell_branch_routes.dart';
part 'routes/mypage_shell_branch_routes.dart';

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
          routes: [
            TypedGoRoute<TaskDetailRoute>(
              path: TaskDetailRoute.path,
            ),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<MypageBranch>(
      routes: [
        TypedGoRoute<MypageRoute>(
          path: '/${MypageRoute.path}',
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
