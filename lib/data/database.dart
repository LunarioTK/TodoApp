import 'package:hive_flutter/hive_flutter.dart';

class ToDataBase {
  List toDoList = [];

  //refernciar a box
  final _mybox = Hive.box('mybox');

  //correr a primeira vez que o utilizador usa a app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", true],
    ];
  }

  //carregar os dados da base de dados
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  //atualizar base de dados
  void updateData() {
    _mybox.put('TODOLIST', toDoList);
  }
}
