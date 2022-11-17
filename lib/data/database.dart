import 'package:hive_flutter/hive_flutter.dart';

class ToDataBase {
  List toDoList = [];

  //refernciar a box
  final _mybox = Hive.openBox('mybox');
}
