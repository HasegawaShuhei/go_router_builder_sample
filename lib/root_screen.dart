import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/router/branch_container.dart';
import 'package:go_router_builder_sample/root_navigation_bar.dart';
import 'package:go_router_builder_sample/root_tab.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({
    super.key,
    required this.navigationShell,
    required this.children,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final currentTab = RootTab.current(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(currentTab.title),
        centerTitle: true,
      ),
      body: BranchContainer(
        currentIndex: navigationShell.currentIndex,
        children: children,
      ),
      bottomNavigationBar: RootNavigationBar(
        navigationShell: navigationShell,
      ),
    );
  }
}
