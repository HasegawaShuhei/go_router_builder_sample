import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_builder_sample/provider/auth_notifier.dart';
import 'package:go_router_builder_sample/routing/router.dart';

Future<void> main() async {
  // final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
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
      await ref.read(authNotifierProvider.future);
      // FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      restorationScopeId: 'MaterialApp',
      title: 'sample',
      routerConfig: router,
    );
  }
}
