import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/root_tab.dart';

class RootNavigationBar extends ConsumerWidget {
  const RootNavigationBar({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (selectedIndex, indicatorColor) = navigationShell.currentIndex <= 2
        ? (navigationShell.currentIndex, null)
        : (0, Colors.transparent);

    return NavigationBar(
      indicatorColor: indicatorColor,
      selectedIndex: selectedIndex,
      destinations: [
        NavigationDestination(
          icon: RootTab.root1.icon,
          label: RootTab.root1.title,
        ),
        NavigationDestination(
          icon: RootTab.root2.icon,
          label: RootTab.root2.title,
        ),
        NavigationDestination(
          icon: RootTab.root3.icon,
          label: RootTab.root3.title,
        ),
      ],
      onDestinationSelected: (index) => navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      ),
    );
  }
}
