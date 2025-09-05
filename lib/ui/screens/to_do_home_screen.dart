import 'package:counter_provider/providers/to_do_provider.dart';
import 'package:counter_provider/ui/screens/add_new_task_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ToDoHomeScreen extends StatefulWidget {
  const ToDoHomeScreen({super.key});

  @override
  State<ToDoHomeScreen> createState() {
    return _ToDoHomeScreenState();
  }
}

class _ToDoHomeScreenState extends State<ToDoHomeScreen> {


  @override
  Widget build(BuildContext context) {

    final listMap = context.watch<ToDoProvider>().taskItemListMap;
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do List App"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddNewTaskScreen()),
              );
            },
            icon: Icon(Icons.add, size: 30),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: listMap.length,
              itemBuilder: (context, index) => ListTile(
                title: Consumer<ToDoProvider>(
                  builder: (context, task, child) =>
                      Text(listMap[index]["taskName"].toString()),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
