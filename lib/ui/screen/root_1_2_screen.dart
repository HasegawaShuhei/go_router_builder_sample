import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/router/navigator_key.dart';

// TODO: partにしてbranchごとに分ける？
// TODO: キッズみたいな場合はbranchよりはroot1のようなディレクトリ名にして、他はcommon?flat?
// TODO: routes/tabs/root1.dart
// TODO: routes/root12.dart

class Root12Route extends GoRouteData {
  const Root12Route();

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  static const path = '2';
  static const fullPath = '/root1/2';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Root12Screen();
  }
}

class Root12Screen extends StatelessWidget {
  const Root12Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Root1_2'),
      ),
    );
  }
}
