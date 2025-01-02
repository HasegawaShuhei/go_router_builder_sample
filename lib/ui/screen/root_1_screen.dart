import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/router/navigator_key.dart';

class Root1Branch extends StatefulShellBranchData {
  static final $navigatorKey = root1NavigatorKey;
}

class Root1Route extends GoRouteData {
  const Root1Route();

  static const path = 'root1';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Root1Screen();
  }
}

class Root1Screen extends StatelessWidget {
  const Root1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Root1'),
    );
  }
}
