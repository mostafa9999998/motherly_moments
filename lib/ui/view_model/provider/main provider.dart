import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../../../data/repo/moduls/birth/ChildGrothResponse.dart';
import '../../../data/repo/moduls/birth/TipsResponse.dart';
import '../../../data/repo/moduls/birth/nutrition/BottleResponse.dart';
import '../../../data/repo/moduls/birth/nutrition/BrestFeedingResponse.dart';
import '../../../data/repo/moduls/birth/nutrition/WeaningResponse.dart';
import '../../../data/repo/moduls/login/LoginBody.dart';
import '../../../data/repo/moduls/login/LoginResponse.dart';
import '../../../data/repo/moduls/todo/TaskResponse.dart';

class Mainprovider extends ChangeNotifier{
  DateTime date = DateTime.now();
  int month =1;
  String categ = 'exercise';
  DateTime selectdate = DateTime.now() ;
  List <TaskResponse> tasklist =[];
  int issueid =1 ;
  int userid =1;
  late int taskid  ;
  String babyname ='';
  List<WeaningResponse> weninglist=[];
  List<BottleResponse> bottlelist=[];
  List<BrestFeedingResponse> brestlist=[];
  List<ChildGrothResponse> childgrothlist=[];
  List<TipsResponse> tipslist=[];

  void setbabyname(String s){
    babyname = s;
  }
  String getbabyname (){
    return babyname ;
  }

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
  void setuserid (int userid){
    userid = userid;
  }

  int getuserid(){
    return month;
  }


  void setissueid (int issue){
    issueid = issue;
  }

  int getissueid(){
    return issueid;
  }
  void settaskid (int task){
    taskid = task;
  }

  int gettaskid(){
    return taskid;
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

  void tasklistS(int userid) async {
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
   tasklist= taskList;
    } catch (e) {
      throw e;
    }
  }

   Future<int> fgetuserid(String email,String password) async {
    Uri url = Uri.parse("https://gradhub.hwnix.com/api/login");
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi ) {
      // I am connected to a mobile network.
      LoginBody loginBody = LoginBody(
        email: email,
        password: password,
      ) ;
      var response = await post(url,body: loginBody.toJson());
      var b = LoginResponse.fromJson(jsonDecode(response.body));
      userid = await b.user!.id! ;
      return b.user!.id! ;
    } else {
      throw Exception('network failed') ;
    }
  }

   Future<List<WeaningResponse>> getweaning (int month)async{
    Uri url = Uri.parse("https://gradhub.hwnix.com/api/get_weaning/$month");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<WeaningResponse> weaningResponse = jsonResponse.map((json) => WeaningResponse.fromJson(json)).toList();
    weninglist = weaningResponse ;
    return weaningResponse ;
  }
  Future<List<BottleResponse>> getbottle (int month)async{
    Uri url = Uri.parse("https://gradhub.hwnix.com/api/get_BottleFeeding/$month");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<BottleResponse> bottleResponse = jsonResponse.map((json) => BottleResponse.fromJson(json)).toList();
    bottlelist = bottleResponse ;
    return bottleResponse ;
  }
  Future<List<BrestFeedingResponse>> getbrest (int month)async{
    Uri url = Uri.parse("https://gradhub.hwnix.com/api/get_BreastFeeding/$month");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<BrestFeedingResponse> brestFeedingResponse = jsonResponse.map((json) => BrestFeedingResponse.fromJson(json)).toList();
    brestlist = brestFeedingResponse ;
    return brestFeedingResponse ;
  }

  Future<List<ChildGrothResponse>> getchildgroth (int month)async{
    Uri url = Uri.parse("https://gradhub.hwnix.com/api/get_ChildGrowth/$month");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<ChildGrothResponse> childGrothResponse = jsonResponse.map((json) => ChildGrothResponse.fromJson(json)).toList();
    childgrothlist = childGrothResponse ;
    return childGrothResponse ;
  }

  Future<List<TipsResponse>> gettips (int month)async{
    Uri url = Uri.parse("https://gradhub.hwnix.com/api/get_tips/$month");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<TipsResponse> tipsResponse = jsonResponse.map((json) => TipsResponse.fromJson(json)).toList();
    tipslist = tipsResponse ;
    print(tipsResponse);
    return tipsResponse ;

  }
}