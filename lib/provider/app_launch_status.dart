import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_builder_sample/provider/auth_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_launch_status.g.dart';

@Riverpod(keepAlive: true)
Future<({AppLaunchStatus status, Exception? exception})> appLaunchStatus(
  Ref ref,
) async {
  final authStatus = ref.watch(authNotifierProvider);
  return switch (authStatus) {
    AsyncError(:final error) => (
        status: AppLaunchStatus.error,
        exception: error as Exception
      ),
    AsyncLoading() => (status: AppLaunchStatus.loading, exception: null),
    AsyncData(:final value) => (
        status:
            value ? AppLaunchStatus.authorized : AppLaunchStatus.unauthorized,
        exception: null
      ),
    _ => throw Exception('unexpected authStatus'),
  };
}

enum AppLaunchStatus {
  authorized,
  unauthorized,
  loading,
  error,
  ;

  bool get isLoading => this == AppLaunchStatus.loading;
  bool get isAuthorized => this == AppLaunchStatus.authorized;
  bool get isUnauthorized => this == AppLaunchStatus.unauthorized;
  bool get hasError => this == AppLaunchStatus.error;
}
