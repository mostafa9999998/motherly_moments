import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../../../data/repo/moduls/todo/TaskResponse.dart';

class Mainprovider extends ChangeNotifier{
  DateTime date = DateTime.now();
  int month =1;
  String categ = 'exercise';
  DateTime selectdate = DateTime.now() ;
  //List <TaskResponse> tasklist =[];

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

  Future<List<TaskResponse>> tasklistS(int userid) async {
    try {
      Uri url = Uri.parse("https://gradhub.hwnix.com/api/getListById/$userid");
      Response response = await get(url);
      List<dynamic> jsonResponse = jsonDecode(response.body);
      List<TaskResponse> taskList = jsonResponse.map((json) => TaskResponse.fromJson(json)).toList();

      taskList = taskList.where((task) {
        return task.due!.year == selectdate.year &&
            task.due!.month == selectdate.month &&
            task.due!.day == selectdate.day;
      }).toList();

      taskList.sort((TaskResponse task1, TaskResponse task2) {
        return task1.due!.compareTo(task2.due!);
      });

      notifyListeners();

      return taskList;
    } catch (e) {
      throw e;
    }
  }

}