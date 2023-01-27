import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // Reference Box
  final _myBox = Hive.box('mybox');

  // 1st time running app Initial Data
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // Load Data from Database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // Update to Database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
