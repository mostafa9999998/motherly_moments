import 'package:flutter/material.dart';

import '../../../../../data/repo/moduls/todo/TaskResponse.dart';

class TaskWedget extends StatelessWidget {
  TaskWedget({super.key, required this.task,required this.tasknum});
  TaskResponse task ;
  int tasknum ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color:  tasknum % 2 == 0 ? Color(0x54ee4964): Color(0x4a4cd964)
      ),
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.02),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), topLeft: Radius.circular(15)),
              color: tasknum % 2 == 0 ? Color(0xffEE4964) : Color(0xff4CD964) ,
            ),
            width:MediaQuery.of(context).size.width*.05 ,

          ),
          SizedBox(
            width: MediaQuery.of(context).size.width*.008,
          ),
          Container(
            width: MediaQuery.of(context).size.width*.75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*.01,),
                Text(task.title??'' ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:tasknum % 2 == 0 ? Color(0xffEE4964) : Color(0xff4CD964))),
                Text(task.content??'',style: TextStyle(fontSize: 18,color:tasknum % 2 == 0 ? Color(0xffEE4964) : Color(0xff4CD964))),
              ],
            ),
          ),
          //Spacer(),
          Icon(Icons.mode)
        ],
      ),
    );
  }
}
