import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_builder_sample/provider/auth_notifier.dart';
import 'package:go_router_builder_sample/routing/app_router.dart';
import 'package:go_router_builder_sample/routing/refresh_listenable.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    Future(() async {
      await Future.delayed(Duration(seconds: 1));
      // try {
      //   await ref.read(authNotifierProvider.future);
      // } catch (e) {
      //   debugPrint(e.toString());
      // }
      FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(appRouterProvider);
    final refreshListenable = ref.watch(refreshListenableProvider.notifier);
    return MaterialApp.router(
      routerConfig: router.config(
        reevaluateListenable: refreshListenable,
      ),
      debugShowCheckedModeBanner: false,
      builder: (context, child) => child!,
    );
  }
}
