import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_builder_sample/provider/auth_notifier.dart';

class MypageScreen extends ConsumerWidget {
  const MypageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              await ref.read(authNotifierProvider.notifier).login();
            },
            child: Text('ログイン'),
          ),
          ElevatedButton(
            onPressed: () async {
              await ref.read(authNotifierProvider.notifier).logout();
            },
            child: Text('ログアウト'),
          ),
        ],
      ),
    );
  }
}
