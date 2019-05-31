import 'package:flutter/material.dart';

import '../data/state.dart';
import 'edit_task.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Task> _tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Manager'),
      ),
      body: Builder(
        builder: (_) {
          if (_tasks.isEmpty) {
            return Center(
              child: Text('No Tasks Found'),
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              final _item = _tasks[index];
              return ListTile(
                title: Text(_item.name),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    if (mounted)
                      setState(() {
                        _tasks.removeAt(index);
                      });
                  },
                ),
                onTap: () {
                  Navigator.of(context)
                      .push<Task>(
                    MaterialPageRoute(
                        builder: (_) => EditTaskScreen(task: _item)),
                  )
                      .then((value) {
                    if (value != null) {
                      if (mounted)
                        setState(() {
                          _tasks[index] = value;
                        });
                    }
                  });
                },
              );
            },
            itemCount: _tasks.length,
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Add Task'),
        icon: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push<Task>(
            MaterialPageRoute(
                builder: (_) => EditTaskScreen(), fullscreenDialog: true),
          )
              .then((value) {
            if (value != null) {
              if (mounted)
                setState(() {
                  _tasks.add(value);
                });
            }
          });
        },
      ),
    );
  }
}
