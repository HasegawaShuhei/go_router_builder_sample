import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_builder_sample/routing/app_router.gr.dart';

@RoutePage()
class RootScreen extends ConsumerWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsRouter(
      routes: const [
        HomeTab(),
        TaskTab(),
        MypageTab(),
      ],
      transitionBuilder: (context, child, animation) {
        return AnimatedBuilder(
          animation: animation,
          builder: (context, _) => child,
        );
      },
      builder: (context, child) {
        final isVisible =
            context.topRouteMatch.meta['isVisibleBottomNavBar'] == true;
        final activeIndex = context.tabsRouter.activeIndex;
        return Stack(
          children: [
            Scaffold(
              body: child,
              bottomNavigationBar: isVisible
                  ? Container(
                      constraints: const BoxConstraints(maxHeight: 86),
                      child: BottomNavigationBar(
                        selectedLabelStyle: const TextStyle(fontSize: 10),
                        unselectedLabelStyle: const TextStyle(fontSize: 10),
                        currentIndex: activeIndex,
                        onTap: (index) async {
                          context.tabsRouter.setActiveIndex(index);
                        },
                        items: BottomNavBarItem.values.map((i) {
                          final isSelected = activeIndex == i.index;
                          return BottomNavigationBarItem(
                            icon: Icon(
                              isSelected ? i.selectedIcon : i.unselectedIcon,
                              size: 24,
                            ),
                            label: i.label,
                          );
                        }).toList(),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        );
      },
    );
  }
}

enum BottomNavBarItem {
  home(
    label: 'ホーム',
    selectedIcon: Icons.home,
    unselectedIcon: Icons.home_outlined,
  ),
  historyUsage(
    label: 'タスク',
    selectedIcon: Icons.task,
    unselectedIcon: Icons.task_outlined,
  ),
  mypage(
    label: 'マイページ',
    selectedIcon: Icons.person,
    unselectedIcon: Icons.person_outline,
  ),
  ;

  const BottomNavBarItem({
    required this.label,
    required this.selectedIcon,
    required this.unselectedIcon,
  });

  final String label;
  final IconData selectedIcon;
  final IconData unselectedIcon;
}
