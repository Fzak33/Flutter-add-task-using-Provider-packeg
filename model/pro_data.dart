import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data_title.dart';

class ProData extends ChangeNotifier{

  List<DataTitle> task=[
   DataTitle(title:  'bild',),
   DataTitle(title:'str', ) ,
   DataTitle(title:'helcat' )
  ];

  void addTask(String newTask){
    task.add(DataTitle(title: newTask));
    notifyListeners();
  }
  void deleteTask(DataTitle tasks){
    task.remove(tasks);
    notifyListeners();
  }
  void updateTask(DataTitle tasks){
    tasks.doneChange();
    notifyListeners();
  }

  int get taskNum{
    return task.length;
  }
}