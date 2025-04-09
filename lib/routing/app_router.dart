import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_builder_sample/routing/app_router.gr.dart';
import 'package:go_router_builder_sample/routing/guards/root_auth_guard.dart';
import 'package:go_router_builder_sample/routing/route_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

const _isVisibleBottomNavBarMeta = <String, dynamic>{
  'isVisibleBottomNavBar': true
};

@Riverpod(keepAlive: true)
Raw<AppRouter> appRouter(Ref ref) => AppRouter(
      rootAutoRouteGuard: ref.watch(rootAutoRouteGuardProvider),
    );

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter({required this.rootAutoRouteGuard});
  final RootAutoRouteGuard rootAutoRouteGuard;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: RootRoute.page,
            initial: true,
            type: NoTransitionRouteType(),
            guards: [
              rootAutoRouteGuard
            ],
            children: [
              AutoRoute(
                page: HomeTab.page,
                children: [
                  AutoRoute(
                    initial: true,
                    page: HomeRoute.page,
                    meta: _isVisibleBottomNavBarMeta,
                  ),
                  AutoRoute(page: TaskDetailsRoute.page),
                ],
              ),
              AutoRoute(
                page: TaskTab.page,
                children: [
                  AutoRoute(
                    initial: true,
                    page: TaskRoute.page,
                    meta: _isVisibleBottomNavBarMeta,
                  ),
                  AutoRoute(page: TaskDetailsRoute.page),
                ],
              ),
              AutoRoute(
                page: MypageTab.page,
                children: [
                  AutoRoute(
                    initial: true,
                    page: MypageRoute.page,
                    meta: _isVisibleBottomNavBarMeta,
                  ),
                ],
              )
            ]),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: LaunchLoadingRoute.page),
      ];
}

@RoutePage(name: 'HomeTab')
class HomeTabScreen extends AutoRouter {
  const HomeTabScreen({super.key});
}

@RoutePage(name: 'TaskTab')
class TaskTabScreen extends AutoRouter {
  const TaskTabScreen({super.key});
}

@RoutePage(name: 'MypageTab')
class MypageTabScreen extends AutoRouter {
  const MypageTabScreen({super.key});
}
