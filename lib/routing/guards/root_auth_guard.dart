import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_builder_sample/provider/app_launch_status.dart';
import 'package:go_router_builder_sample/routing/app_router.gr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'root_auth_guard.g.dart';

@Riverpod(keepAlive: true)
Raw<RootAutoRouteGuard> rootAutoRouteGuard(Ref ref) => RootAutoRouteGuard(ref);

class RootAutoRouteGuard extends AutoRouteGuard {
  RootAutoRouteGuard(this._ref);
  final Ref _ref;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final launchState = _ref.read(appLaunchStatusProvider);
    print(launchState.status);
    print(resolver.routeName);
    if (launchState.status.isLoading) {
      resolver.redirectUntil(LaunchLoadingRoute());
    }
    if (launchState.status.isAuthorized & !resolver.isResolved) {
      resolver.next();
    }
    resolver.redirectUntil(LoginRoute());
  }
}
