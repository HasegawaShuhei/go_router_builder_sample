import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/router/navigator_key.dart';

class Root3Branch extends StatefulShellBranchData {
  static final $navigatorKey = root3NavigatorKey;
}

class Root3Route extends GoRouteData {
  const Root3Route();

  static const path = 'root3';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Root3Screen();
  }
}

class Root3Screen extends StatelessWidget {
  const Root3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Root3'),
    );
  }
}
