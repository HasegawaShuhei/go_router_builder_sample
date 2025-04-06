import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/router.dart';

enum RootTab {
  root1(HomeRoute.path),
  root2(TaskRoute.path),
  root3(MypageRoute.path),
  ;

  const RootTab(this.path);

  final String path;

  static RootTab current(BuildContext context) {
    final location = GoRouterState.of(context).uri;
    return RootTab.values.firstWhere(
      (element) => element.path == location.pathSegments.first,
      orElse: () => RootTab.root1,
    );
  }
}

extension RootTabExt on RootTab {
  Icon get icon => Icon(iconData);

  IconData get iconData => switch (this) {
        RootTab.root1 => Icons.home,
        RootTab.root2 => Icons.list,
        RootTab.root3 => Icons.groups,
      };

  String get title => switch (this) {
        RootTab.root1 => 'home',
        RootTab.root2 => 'task',
        RootTab.root3 => 'settings',
      };

  /// These values are prescribed by sort order defined in [RootRoute]
  int get branchIndex => switch (this) {
        RootTab.root1 => 0,
        RootTab.root2 => 1,
        RootTab.root3 => 3,
      };
}
