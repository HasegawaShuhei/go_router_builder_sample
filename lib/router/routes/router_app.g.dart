// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_app.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $loginRoute,
      $rootRoute,
    ];

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $rootRoute => StatefulShellRouteData.$route(
      navigatorContainerBuilder: RootRoute.$navigatorContainerBuilder,
      factory: $RootRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: Root1Branch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/root1',
              factory: $Root1RouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: '2',
                  parentNavigatorKey: Root12Route.$parentNavigatorKey,
                  factory: $Root12RouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: Root2Branch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/root2',
              factory: $Root2RouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: Root3Branch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/root3',
              factory: $Root3RouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $RootRouteExtension on RootRoute {
  static RootRoute _fromState(GoRouterState state) => const RootRoute();
}

extension $Root1RouteExtension on Root1Route {
  static Root1Route _fromState(GoRouterState state) => const Root1Route();

  String get location => GoRouteData.$location(
        '/root1',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Root12RouteExtension on Root12Route {
  static Root12Route _fromState(GoRouterState state) => const Root12Route();

  String get location => GoRouteData.$location(
        '/root1/2',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Root2RouteExtension on Root2Route {
  static Root2Route _fromState(GoRouterState state) => const Root2Route();

  String get location => GoRouteData.$location(
        '/root2',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Root3RouteExtension on Root3Route {
  static Root3Route _fromState(GoRouterState state) => const Root3Route();

  String get location => GoRouteData.$location(
        '/root3',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
