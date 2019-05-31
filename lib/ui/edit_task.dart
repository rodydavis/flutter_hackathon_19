import 'package:flutter/material.dart';

import '../data/state.dart';

class EditTaskScreen extends StatefulWidget {
  EditTaskScreen({this.task});
  final Task task;
  @override
  _EditTaskScreenState createState() => _EditTaskScreenState();
}

class _EditTaskScreenState extends State<EditTaskScreen> {
  final _controller = TextEditingController();

  @override
  void initState() {
    if (widget?.task != null) {
      _controller.text = widget.task.name;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget?.task == null ? 'New Task' : 'Edit Task'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _controller.text.isEmpty
                ? null
                : () {
                    Navigator.of(context).pop(Task(name: _controller.text));
                  },
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.text,
                onChanged: (val) {
                  if (mounted)
                    setState(() {
                      print('New Value: $val');
                    });
                },
                decoration: InputDecoration(
                  hintText: 'Task Name',
                  filled: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
