import 'package:add_task_test/model/pro_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/white_backGraund_widget.dart';
import 'add_task_screen.dart';

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
     floatingActionButton: FloatingActionButton(onPressed: () {
       showModalBottomSheet(context: context, builder: (BuildContext context) {
        return SingleChildScrollView(
           child: Container(

               padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
               child: AddTaskScreen(),

           ),
         );
       });
     },
       backgroundColor: Colors.green,

      child: Icon(Icons.add, ),
     ),

     backgroundColor: Colors.blue.shade700,
     body: Padding(
       
       padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           buildRowAppBar(),
           SizedBox(height: 8,),
           Consumer<ProData>(
             builder: (context, proData, child){
            return Text('${proData.taskNum} Tasks',
                 style: TextStyle(
                     fontSize: 20
                 ),);
             },

           ),
           SizedBox(height: 20,),
           WhiteBackGraundWidget(),
         ],
       ),
     ),
   );
  }

  Row buildRowAppBar() {
    return Row(
         children: [
           Icon(Icons.task),
           SizedBox(width: 10,),
           Text('ToDoApp',
           style: TextStyle(
             fontSize: 30
           ),
           )
         ],
       );
  }

}