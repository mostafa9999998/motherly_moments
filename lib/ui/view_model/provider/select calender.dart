import 'package:flutter/material.dart';
import '../../../data/repo/moduls/todo/TaskResponse.dart';

class Mainprovider extends ChangeNotifier{
  DateTime date = DateTime.now();
  int month =1;
  String categ = 'exercise';
  DateTime selectdate = DateTime.now() ;
  List <TaskResponse> tasklist =[];

 void setdate(DateTime selecteddate) {
   date = selecteddate ;
 }
 DateTime getdate(){
   return date;
 }
 void setmonth (int monthnum){
   month = monthnum;
 }

 int getmonth(){
   return month;
 }

  void setcateg (String category){
    categ = category;
  }

  String getcateg(){
    return categ;
  }

  void changeselecteddate(DateTime newdate){
    selectdate=newdate;
    notifyListeners();
  }

  /*void addtasktolist()async{
    tasklist=tasklist.where((task)  {
      if (task.date!.year==selectdate.year&&
          task.date!.month==selectdate.month&&
          task.date!.day==selectdate.day){
        return true;
      }else{
        return false;
      }
    }).toList();

    tasklist.sort(
          (Task task1, Task task2) {
        return task1.date!.compareTo(task2.date!);
      },
    );

    notifyListeners();
  }*/
}