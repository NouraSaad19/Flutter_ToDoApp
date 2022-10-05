import 'package:flutter/material.dart';
import 'package:todoapp/widgets/task.dart';

class Tasks extends StatelessWidget {
  const Tasks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Task(),
        Task(),
      ],
    );
  }
}
