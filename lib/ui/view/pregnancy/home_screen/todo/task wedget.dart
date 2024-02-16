import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:motherly_moments/data/repo/apis/baby%20groth/Api%20manager.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/todo/updatebottomsheet.dart';
import 'package:motherly_moments/ui/view_model/provider/main%20provider.dart';
import 'package:provider/provider.dart';
import '../../../../../data/repo/moduls/todo/TaskResponse.dart';



class TaskWedget extends StatelessWidget {
  TaskWedget({super.key, required this.task,required this.tasknum});
  TaskResponse task ;
  int tasknum ;
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return Container(
      height: MediaQuery.of(context).size.height*.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.02),
      child: Slidable(

        // Specify a key if the Slidable is dismissible.
        key: const ValueKey(0),
        startActionPane: ActionPane(
          extentRatio: .25,
          motion: const ScrollMotion(),
          // All actions are defined in the children parameter.
          children:  [
            SlidableAction(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft:Radius.circular(15) ),
              onPressed: (context){
                Apimanager.deletetask(task.id!);
                provider.tasklistS(provider.userid);
              },
              backgroundColor: Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: Container(
          height: MediaQuery.of(context).size.height*.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color:  tasknum % 2 == 0 ? Color(0x54ee4964): Color(0x4a4cd964)
          ),
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
              InkWell(
                onTap: () {
                  provider.settaskid(task.id!);
                  showModalBottomSheet(
                      context: context, builder: (context) => ShowUpdatebottomsheet());            },
                  child: Icon(Icons.mode)
              )
            ],
          ),
        ),
      ),
    );
  }
}
/*flutter pub add flutter_slidable
* Slidable(
  // Specify a key if the Slidable is dismissible.
  key: const ValueKey(0),

  // The start action pane is the one at the left or the top side.
  startActionPane: ActionPane(
    // A motion is a widget used to control how the pane animates.
    motion: const ScrollMotion(),

    // A pane can dismiss the Slidable.
    dismissible: DismissiblePane(onDismissed: () {}),

    // All actions are defined in the children parameter.
    children: const [
      // A SlidableAction can have an icon and/or a label.
      SlidableAction(
        onPressed: doNothing,
        backgroundColor: Color(0xFFFE4A49),
        foregroundColor: Colors.white,
        icon: Icons.delete,
        label: 'Delete',
      ),
      SlidableAction(
        onPressed: doNothing,
        backgroundColor: Color(0xFF21B7CA),
        foregroundColor: Colors.white,
        icon: Icons.share,
        label: 'Share',
      ),
    ],
  ),
*
*
*
* */