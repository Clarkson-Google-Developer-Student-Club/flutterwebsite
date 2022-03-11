import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build( BuildContext context){
    return MaterialApp(
      title: 'Oogie Boogie',
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(),
    
      );
    }
  }

class MyHomePage extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Oogie Boogie Bash!"),
      ),
      body: Column(
        children: [
          Progress(),
          TaskList(),
        ],
      ),
    );
  }
}

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
         Text("Keep Up The Boogie to Become the Oogie Boogie Bastard"),
        LinearProgressIndicator(value: 0.0),
      ],
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(label: "LEFT FOOT"),
        TaskItem(label: "RIGHT FOOT"),
        TaskItem(label: "BRING IT AROUND TOWN"),
        TaskItem(label: "LEFT ARM"),
        TaskItem(label: "RIGHT ARM"),
      ],
    );
  }
}

class TaskItem extends StatefulWidget{
  final String label;
  
  TaskItem({Key? key, required this.label}) : super(key: key);
  
  @override
  _TaskItemState createState() => _TaskItemState();
  
}

class _TaskItemState extends State<TaskItem>{
  bool? _value = false;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(onChanged:
                 (newValue) => setState(() => _value = newValue),
                 value: _value,
                ),
        Text(widget.label),
      ],
    );
  }
}

