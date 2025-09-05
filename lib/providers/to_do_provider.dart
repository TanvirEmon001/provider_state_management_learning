import 'package:flutter/foundation.dart';

class ToDoProvider with ChangeNotifier {
  final List<Map<String,String>> _taskItemListMap = [];

  List<Map<String,String>> get taskItemListMap => _taskItemListMap;

  void addTask(String taskName){
    _taskItemListMap.add(
      {
        "taskName" : taskName
      }
    );
    notifyListeners();
  }

  int get taskLength => _taskItemListMap.length;

}