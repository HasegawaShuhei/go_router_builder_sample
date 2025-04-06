part of '../router.dart';

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

class TaskDetailRoute extends GoRouteData {
  const TaskDetailRoute({
    required this.taskId,
  });

  static const path = ':taskId';

  // ボトムナビゲーションバーなしで遷移する場合はparentNavigatorKeyを使う
  static final $parentNavigatorKey = rootNavigatorKey;

  final String taskId;

  @override
  MaterialPage<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage<void>(
      child: TaskDetailsScreen(id: taskId),
    );
  }
}
