import 'package:add_task_test/model/pro_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/data_title.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? newtitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
              'Add task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30
            ),

          ),
          TextFormField(
              textAlign: TextAlign.center,
            autofocus: true,
            onChanged: (newText){
                newtitle=newText;
            },
          ),
          TextButton(onPressed: (){
            Provider.of<ProData>(context,listen: false).addTask(newtitle!);
            Navigator.pop(context);
          }, child: Text('Add'))
        ],
      ),
    );
  }
}
