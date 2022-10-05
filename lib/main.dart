import 'package:flutter/material.dart';
import 'package:todoapp/models/task_data.dart';
import 'package:todoapp/screens/login_screen.dart';
import 'package:todoapp/screens/to_do_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: LoginScreen(),
        home: ToDoScreen(),
      ),
    );
  }
}
