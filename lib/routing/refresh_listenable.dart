import 'package:flutter/material.dart';
import 'package:go_router_builder_sample/provider/app_launch_status.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'refresh_listenable.g.dart';

@riverpod
class RefreshListenable extends _$RefreshListenable implements Listenable {
  VoidCallback? routerListener;

  @override
  Future<void> build() async {
    ref.listen(appLaunchStatusProvider, (_, next) {
      routerListener?.call();
    });
  }

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}
