import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/router/navigator_key.dart';
import 'package:go_router_builder_sample/router/refresh_listenable.dart';
import 'package:go_router_builder_sample/router/router_app.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
    debugLogDiagnostics: kDebugMode,
    navigatorKey: rootNavigatorKey,
    initialLocation: '/root1',
    refreshListenable: ref.watch(refreshListenableProvider.notifier),
    routes: [
      ...$appRoutes,
    ],
  );
}
