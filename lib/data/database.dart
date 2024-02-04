import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  //list of todo task
  List toDoList = [];
  //reference the hive box
  final _myBox = Hive.box("mybox");

  //the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // updata the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
