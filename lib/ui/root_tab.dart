import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/ui/screen/root_1_screen.dart';
import 'package:go_router_builder_sample/ui/screen/root_2_screen.dart';
import 'package:go_router_builder_sample/ui/screen/root_3_screen.dart';

enum RootTab {
  root1(Root1Route.path),
  root2(Root2Route.path),
  root3(Root3Route.path),
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
        RootTab.root1 => 'root1',
        RootTab.root2 => 'root2',
        RootTab.root3 => 'root3',
      };

  /// These values are prescribed by sort order defined in [RootRoute]
  int get branchIndex => switch (this) {
        RootTab.root1 => 0,
        RootTab.root2 => 1,
        RootTab.root3 => 3,
      };
}
