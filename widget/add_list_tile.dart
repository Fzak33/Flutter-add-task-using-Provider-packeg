import 'package:add_task_test/model/pro_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddListTile extends StatelessWidget {
 AddListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Consumer<ProData>(
      builder: ( context, tasks,  child) {
        return ListView.builder(
            itemCount: tasks.task.length,
            itemBuilder: (context,i){
              return ListTile(
                title: Text(tasks.task[i].title,
                style: TextStyle(
                    decoration: tasks.task[i].isChecked ? TextDecoration.lineThrough : null,
                ),
                ),
                trailing: Checkbox(
                  value: tasks.task[i].isChecked,
                  onChanged: (bool? value) {
                    tasks.updateTask(tasks.task[i]);
                  },

                ),
                onLongPress: (){
                  tasks.deleteTask(tasks.task[i]);
                }
              );
            });
      },

    );
  }
}
