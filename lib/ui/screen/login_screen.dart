// TODO:
// redirectでのログアウト
// guardでのログインチェック
// pop until
// pushNamedAndRemoveUntil
// animation

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginRoute extends GoRouteData {
  const LoginRoute();

  static const path = 'login';

  // @override
  // Widget build(BuildContext context, GoRouterState state) {
  //   return const LoginScreen();
  // }

  @override
  MaterialPage<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage<void>(
      child: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Login'),
        ),
      ),
    );
  }
}
