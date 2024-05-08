import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
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

class Mainprovider extends ChangeNotifier {
  DateTime date = DateTime.now();
  int month = 1;
  String categ = 'exercise';
  DateTime selectdate = DateTime.now();
  List<TaskResponse> tasklist = [];
  int issueid = 1;
  int userid = 1;
  late int taskid;
  String babyname = '';
  String appLanguage = 'en';
  List<WeaningResponse> weninglist = [];
  List<BottleResponse> bottlelist = [];
  List<BrestFeedingResponse> brestlist = [];
  List<ChildGrothResponse> childgrothlist = [];
  List<TipsResponse> tipslist = [];

  void setbabyname(String s) {
    babyname = s;
  }

  String getbabyname() {
    return babyname;
  }

  void setdate(DateTime selecteddate) {
    date = selecteddate;
  }

  DateTime getdate() {
    return date;
  }

  void setmonth(int monthnum) {
    month = monthnum;
  }

  int getmonth() {
    return month;
  }

  void setuserid(int userid) {
    userid = userid;
  }

  int getuserid() {
    return month;
  }

  void setissueid(int issue) {
    issueid = issue;
  }

  int getissueid() {
    return issueid;
  }

  void settaskid(int task) {
    taskid = task;
  }

  int gettaskid() {
    return taskid;
  }

  void setcateg(String category) {
    categ = category;
  }

  String getcateg() {
    return categ;
  }

  void changeselecteddate(DateTime newdate) {
    selectdate = newdate;
    notifyListeners();
  }

  void changeLanguage(String newlanguage) {
    if (appLanguage == newlanguage) {
      return;
    }
    appLanguage = newlanguage;
    notifyListeners();
  }

  void tasklistS(int userid) async {
    try {
      Uri url = Uri.parse("https://gradhub.hwnix.com/api/getListById/$userid");
      Response response = await get(url);
      List<dynamic> jsonResponse = jsonDecode(response.body);
      List<TaskResponse> taskList =
          jsonResponse.map((json) => TaskResponse.fromJson(json)).toList();

      taskList = taskList.where((task) {
        return task.due!.year == selectdate.year &&
            task.due!.month == selectdate.month &&
            task.due!.day == selectdate.day;
      }).toList();
      taskList.sort((TaskResponse task1, TaskResponse task2) {
        return task1.due!.compareTo(task2.due!);
      });
      notifyListeners();
      tasklist = taskList;
    } catch (e) {
      throw e;
    }
  }

  Future<int> fgetuserid(String email, String password) async {
    Uri url = Uri.parse("https://gradhub.hwnix.com/api/login");
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a mobile network.
      LoginBody loginBody = LoginBody(
        email: email,
        password: password,
      );
      var response = await post(url, body: loginBody.toJson());
      var b = LoginResponse.fromJson(jsonDecode(response.body));
      userid = await b.user!.id!;
      return b.user!.id!;
    } else {
      throw Exception('network failed');
    }
  }

  Future<List<WeaningResponse>> getweaning(int month) async {
    Uri url = Uri.parse("https://gradhub.hwnix.com/api/get_weaning/$month");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<WeaningResponse> weaningResponse =
        jsonResponse.map((json) => WeaningResponse.fromJson(json)).toList();
    weninglist = weaningResponse;
    return weaningResponse;
  }

  Future<List<BottleResponse>> getbottle(int month) async {
    Uri url =
        Uri.parse("https://gradhub.hwnix.com/api/get_BottleFeeding/$month");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<BottleResponse> bottleResponse =
        jsonResponse.map((json) => BottleResponse.fromJson(json)).toList();
    bottlelist = bottleResponse;
    return bottleResponse;
  }

  Future<List<BrestFeedingResponse>> getbrest(int month) async {
    Uri url =
        Uri.parse("https://gradhub.hwnix.com/api/get_BreastFeeding/$month");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<BrestFeedingResponse> brestFeedingResponse = jsonResponse
        .map((json) => BrestFeedingResponse.fromJson(json))
        .toList();
    brestlist = brestFeedingResponse;
    return brestFeedingResponse;
  }

  Future<List<ChildGrothResponse>> getchildgroth(int month) async {
    Uri url = Uri.parse("https://gradhub.hwnix.com/api/get_ChildGrowth/$month");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<ChildGrothResponse> childGrothResponse =
        jsonResponse.map((json) => ChildGrothResponse.fromJson(json)).toList();
    childgrothlist = childGrothResponse;
    return childGrothResponse;
  }

  Future<List<TipsResponse>> gettips(int month) async {
    Uri url = Uri.parse("https://gradhub.hwnix.com/api/get_tips/$month");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<TipsResponse> tipsResponse =
        jsonResponse.map((json) => TipsResponse.fromJson(json)).toList();
    tipslist = tipsResponse;
    print(tipsResponse);
    return tipsResponse;
  }
}
/*

 SharedPreferences? prefs;
  static String logintypekey ='login1key';
  static String loginnamekey ='login2key';
  static String loginemailkey ='login3key';
  static String loginaddresskey ='login4key';
  static String loginidkey ='login5key';
  static String loginphone1key ='login6key';
  static String loginphonenum2key ='login7key';
  static String logintypeidkey ='login8key';


Future<void> setlogintype(String loginrespons) async{
  await prefs!.setString(logintypekey, loginrespons);
}
String? getlogintype(){
  return prefs!.getString(logintypekey);
}


Future<void> setloginid(int loginrespons) async{
  await prefs!.setInt(loginidkey, loginrespons);
}
int? getloginid(){
  return prefs!.getInt(loginidkey);
}


Future<void> setloginname(String loginrespons) async{
  await prefs!.setString(loginnamekey, loginrespons);
}
String? getloginname(){
  return prefs!.getString(loginnamekey);
}


Future<void> setloginemail(String loginrespons) async{
  await prefs!.setString(loginemailkey, loginrespons);
}
String? getloginemail(){
  return prefs!.getString(loginemailkey);
}


Future<void> setloginaddress(String loginrespons) async{
  await prefs!.setString(loginaddresskey, loginrespons);
}

String? getloginaddress(){
  return prefs!.getString(loginaddresskey);
}


Future<void> setloginphonenum1(String loginrespons) async{
  await prefs!.setString(loginphone1key, loginrespons);
}
String? getloginphonenum1(){
  return prefs!.getString(loginphone1key);
}


Future<void> setloginphonenum2(String loginrespons) async{
  await prefs!.setString(loginphonenum2key, loginrespons);
}
String? getloginphonenum2(){
  return prefs!.getString(loginphonenum2key);
}


Future<void> setlogintypeid(int loginrespons) async{
  await prefs!.setInt(logintypeidkey, loginrespons);
}
int? getlogintypeid(){
  return prefs!.getInt(logintypeidkey);
}



Future<void> loading() async{
  prefs = await SharedPreferences.getInstance();

  if (getloginphonenum1() != null){
    String s =getloginphonenum1()!;
    //final jsonMap = Map<String,dynamic>.from(json.decode(s));
    //var b = SharedResponse.fromJson(jsonMap);
    //var b =  SharedResponse.fromJson(jsonDecode(s));
    print('$s=======================================================================');
    //print(b.toJson().toString());
    LoginResponse lo = LoginResponse(type: getlogintype(),
        user: User(
            name: getloginname(),
            address:getloginaddress() ,
            id:getloginid() ,
            email: getloginemail() ,
            phonenum1:getloginphonenum1() ,
            phonenum2: getloginphonenum2(),
            typeId: getlogintypeid()
        )
    );
    setuserinfo(lo);
    setuserid(getloginid()!);
  }
}
*/