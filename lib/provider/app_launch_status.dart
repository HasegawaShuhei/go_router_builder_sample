import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_builder_sample/provider/auth_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_launch_status.g.dart';

@Riverpod(keepAlive: true)
({AppLaunchStatus status, Exception? exception}) appLaunchStatus(
  Ref ref,
) {
  final authStatus = ref.watch(authNotifierProvider);
  late ({AppLaunchStatus status, Exception? exception}) result;
  switch (authStatus) {
    case AsyncError(:final error):
      result = (status: AppLaunchStatus.error, exception: error as Exception);
    case AsyncLoading():
      result = (status: AppLaunchStatus.loading, exception: null);
    case AsyncData(:final value):
      result = (
        status:
            value ? AppLaunchStatus.authorized : AppLaunchStatus.unauthorized,
        exception: null
      );
    case _:
      throw Exception('Unexected state: $authStatus');
  }
  return result;
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
