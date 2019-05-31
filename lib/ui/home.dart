import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/state.dart';
import 'edit_task.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, model, child) => Scaffold(
            appBar: AppBar(
              title: Text('Task Manager'),
            ),
            body: Builder(
              builder: (_) {
                if (model.tasks.isEmpty) {
                  return Center(
                    child: Text('No Tasks Found'),
                  );
                }
                return ListView.builder(
                  itemBuilder: (context, index) {
                    final _item = model.tasks[index];
                    return ListTile(
                      title: Text(_item.name),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          model.delete(index);
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
                            model.edit(index, value);
                          }
                        });
                      },
                    );
                  },
                  itemCount: model.tasks.length,
                );
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
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
                    model.add(value);
                  }
                });
              },
            ),
          ),
    );
  }
}
