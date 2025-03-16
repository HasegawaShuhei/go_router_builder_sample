import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/routing/navigator_key.dart';

class HomeBranch extends StatefulShellBranchData {
  static final $navigatorKey = homeNavigatorKey;
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const path = 'home';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Root1'),
    );
  }
}
