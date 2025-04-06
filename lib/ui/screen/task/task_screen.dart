import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Task'),
          ElevatedButton(
            onPressed: () {
              final id = 'hoge';
              context.push('/task/$id');
            },
            child: Text('to task details'),
          ),
        ],
      ),
    );
  }
}
