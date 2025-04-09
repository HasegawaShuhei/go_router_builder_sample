import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router_builder_sample/routing/app_router.gr.dart';

@RoutePage()
class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (_, index) {
          return ListTile(
            title: Text('Task $index'),
            onTap: () {
              context.router.push(TaskDetailsRoute(id: index.toString()));
            },
          );
        },
      ),
    );
  }
}
