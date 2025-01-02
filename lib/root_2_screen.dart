import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/router/navigator_key.dart';

class Root2Branch extends StatefulShellBranchData {
  static final $navigatorKey = root2NavigatorKey;
}

class Root2Route extends GoRouteData {
  const Root2Route();

  static const path = 'root2';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Root2Screen();
  }
}

class Root2Screen extends StatelessWidget {
  const Root2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Root2'),
    );
  }
}
