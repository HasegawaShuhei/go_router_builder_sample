// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:go_router_builder_sample/routing/app_router.dart' as _i2;
import 'package:go_router_builder_sample/ui/screen/home/home_screen.dart'
    as _i1;
import 'package:go_router_builder_sample/ui/screen/launch/launch_loading_screen.dart'
    as _i3;
import 'package:go_router_builder_sample/ui/screen/login/login_screen.dart'
    as _i4;
import 'package:go_router_builder_sample/ui/screen/mypage/mypage_screen.dart'
    as _i5;
import 'package:go_router_builder_sample/ui/screen/root/root_screen.dart'
    as _i6;
import 'package:go_router_builder_sample/ui/screen/task/task_details_screen.dart'
    as _i7;
import 'package:go_router_builder_sample/ui/screen/task/task_screen.dart'
    as _i8;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeTabScreen]
class HomeTab extends _i9.PageRouteInfo<void> {
  const HomeTab({List<_i9.PageRouteInfo>? children})
    : super(HomeTab.name, initialChildren: children);

  static const String name = 'HomeTab';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeTabScreen();
    },
  );
}

/// generated route for
/// [_i3.LaunchLoadingScreen]
class LaunchLoadingRoute extends _i9.PageRouteInfo<void> {
  const LaunchLoadingRoute({List<_i9.PageRouteInfo>? children})
    : super(LaunchLoadingRoute.name, initialChildren: children);

  static const String name = 'LaunchLoadingRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.LaunchLoadingScreen();
    },
  );
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginScreen();
    },
  );
}

/// generated route for
/// [_i5.MypageScreen]
class MypageRoute extends _i9.PageRouteInfo<void> {
  const MypageRoute({List<_i9.PageRouteInfo>? children})
    : super(MypageRoute.name, initialChildren: children);

  static const String name = 'MypageRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.MypageScreen();
    },
  );
}

/// generated route for
/// [_i2.MypageTabScreen]
class MypageTab extends _i9.PageRouteInfo<void> {
  const MypageTab({List<_i9.PageRouteInfo>? children})
    : super(MypageTab.name, initialChildren: children);

  static const String name = 'MypageTab';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.MypageTabScreen();
    },
  );
}

/// generated route for
/// [_i6.RootScreen]
class RootRoute extends _i9.PageRouteInfo<void> {
  const RootRoute({List<_i9.PageRouteInfo>? children})
    : super(RootRoute.name, initialChildren: children);

  static const String name = 'RootRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.RootScreen();
    },
  );
}

/// generated route for
/// [_i7.TaskDetailsScreen]
class TaskDetailsRoute extends _i9.PageRouteInfo<TaskDetailsRouteArgs> {
  TaskDetailsRoute({
    _i10.Key? key,
    required String id,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         TaskDetailsRoute.name,
         args: TaskDetailsRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'TaskDetailsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TaskDetailsRouteArgs>();
      return _i7.TaskDetailsScreen(key: args.key, id: args.id);
    },
  );
}

class TaskDetailsRouteArgs {
  const TaskDetailsRouteArgs({this.key, required this.id});

  final _i10.Key? key;

  final String id;

  @override
  String toString() {
    return 'TaskDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i8.TaskScreen]
class TaskRoute extends _i9.PageRouteInfo<void> {
  const TaskRoute({List<_i9.PageRouteInfo>? children})
    : super(TaskRoute.name, initialChildren: children);

  static const String name = 'TaskRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.TaskScreen();
    },
  );
}

/// generated route for
/// [_i2.TaskTabScreen]
class TaskTab extends _i9.PageRouteInfo<void> {
  const TaskTab({List<_i9.PageRouteInfo>? children})
    : super(TaskTab.name, initialChildren: children);

  static const String name = 'TaskTab';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.TaskTabScreen();
    },
  );
}
