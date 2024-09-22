import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/navigator_key.dart';
import 'package:go_router_builder_sample/router_app.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(RouterRef ref) => GoRouter(
      debugLogDiagnostics: kDebugMode,
      navigatorKey: rootNavigatorKey,
      initialLocation: '/root1',
      routes: [
        ...$appRoutes,
      ],
    );
