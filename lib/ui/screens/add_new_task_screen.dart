import 'package:counter_provider/providers/to_do_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() {
    return _AddNewTaskScreenState();
  }
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {

  final TextEditingController _taskNameController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    print("rebuild hoitache");
    return Scaffold(
      appBar: AppBar(title: Text("Add new task")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _taskNameController,
              decoration: InputDecoration(
                hintText: "Write the task name",
                labelText: "Task Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                if (_taskNameController.text.trim().isNotEmpty){
                  context.read<ToDoProvider>().addTask(_taskNameController.text.toString().trim());
                  Navigator.pop(context);
                } else {
                  return;
                }
              }, child: Text("Add Task")),
            ),
          ],
        ),
      ),
    );
  }


  @override
  void dispose() {
    _taskNameController.dispose();
    super.dispose();
  }

}
