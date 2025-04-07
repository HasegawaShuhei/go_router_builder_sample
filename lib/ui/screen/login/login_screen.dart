import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_builder_sample/provider/app_launch_status.dart';
import 'package:go_router_builder_sample/provider/auth_notifier.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: switch (ref.watch(appLaunchStatusProvider)) {
        AsyncLoading() => const Center(child: CircularProgressIndicator()),
        AsyncError(:final error) => Center(
            child: Center(
              child: Text('$error'),
            ),
          ),
        AsyncData(:final value) => switch (value.status) {
            AppLaunchStatus.loading => const Center(
                child: CircularProgressIndicator(),
              ),
            AppLaunchStatus.error => Center(
                child: Text(value.exception.toString()),
              ),
            AppLaunchStatus.unauthorized => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Unauthorized'),
                    ElevatedButton(
                      onPressed: () async =>
                          ref.read(authNotifierProvider.notifier).login(),
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ),
            AppLaunchStatus.authorized => SizedBox.shrink(),
          },
        _ => SizedBox.shrink()
      },
    );
  }
}
