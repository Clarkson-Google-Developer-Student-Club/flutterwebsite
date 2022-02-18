import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Title")
      ),
      body: Column(
        children: [
          Progress(),
          TaskList()
        ]
      )
    );
  }
}

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Some Text"),
        LinearProgressIndicator(value: 0.0)
      ]
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(label: "label 1"),
        TaskItem(label: "label 2"),
        TaskItem(label: "label 3"),
        TaskItem(label: "label 4"),
        TaskItem(label: "label 5")
      ]
    );
  }
}

class TaskItem extends StatefulWidget {
  final String label;
    
  TaskItem({Key? key, required this.label}) : super(key: key);
  
  @override
  _TaskItemState createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool? _value = false;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          onChanged: (newValue) => setState(() => _value = newValue),
          value: _value
        ),
        Text(widget.label)
      ]
    );
  }
}