import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/state.dart';
import 'ui/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListenableProvider<AppState>(
        builder: (_) => AppState(),
        child: HomeScreen(),
      ),
    );
  }
}
