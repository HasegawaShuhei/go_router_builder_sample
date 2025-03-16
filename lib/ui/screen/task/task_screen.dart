import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/routing/navigator_key.dart';

class TaskBranch extends StatefulShellBranchData {
  static final $navigatorKey = taskNavigatorKey;
}

class TaskRoute extends GoRouteData {
  const TaskRoute();

  static const path = 'task';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TaskScreen();
  }
}

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Task'),
    );
  }
}
