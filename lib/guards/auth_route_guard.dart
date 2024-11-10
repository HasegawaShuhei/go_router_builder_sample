import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/auth_notifier.dart';
import 'package:go_router_builder_sample/guards/route_guard_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_route_guard.g.dart';

@riverpod
AuthRouteGuard authRouteGuard(AuthRouteGuardRef ref) => AuthRouteGuard(ref);

class AuthRouteGuard implements RouteGuardInterface {
  AuthRouteGuard(this.ref);

  final Ref ref;

  @override
  FutureOr<String?> canGo(BuildContext context, GoRouterState routerState) {
    final isAuthenticated = ref.read(authNotifierProvider);
    // if (!isAuthenticated) {
    //   return LoginRoute.path;
    // } else if (routerState.matchedLocation == LoginRoute.path) {
    //   return HomeRoute.path;
    // }
    return null;
  }
}
