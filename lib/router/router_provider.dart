import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/router/navigator_key.dart';
import 'package:go_router_builder_sample/router/refresh_listenable.dart';
import 'package:go_router_builder_sample/router/routes/router.dart';
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
    // TODO: initialLocationはloadingにしておいて初期routeの決定はredirectで行うのが良さそう
    // https://github.com/lucavenir/go_router_riverpod/blob/master/example/lib/router/router.dart
    redirect: (context, state) async {
      return null;
    },
  );
}
