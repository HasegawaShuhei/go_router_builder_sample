part of '../router.dart';

class MypageBranch extends StatefulShellBranchData {
  static final $navigatorKey = mypageNavigatorKey;
}

class MypageRoute extends GoRouteData {
  const MypageRoute();

  static const path = 'mypage';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MypageScreen();
  }
}
