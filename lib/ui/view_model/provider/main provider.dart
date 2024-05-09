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
import 'package:shared_preferences/shared_preferences.dart';

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
  String appLanguage = "en";
  List<WeaningResponse> weninglist = [];
  List<BottleResponse> bottlelist = [];
  List<BrestFeedingResponse> brestlist = [];
  List<ChildGrothResponse> childgrothlist = [];
  List<TipsResponse> tipslist = [];
  SharedPreferences? prefs;
  static String lang = "/en";
  static String login_messagekey = 'login1key';
  static String login_idkey = 'login2key';
  static String login_namekey = 'login3key';
  static String login_emailkey = 'login4key';
  static String login_phonekey = 'login5key';
  static String login_createdkey = 'login6key';
  static String login_updatedkey = 'login7key';
  late LoginResponse loginResponse;
  late int outheruserid;

  void setoutheruserid(int id) {
    outheruserid = id;
  }

  int getoutheruserid() {
    return outheruserid;
  }

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

  void setuserid(int id) {
    userid = id;
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
    Uri url =
        Uri.parse("https://gradhub.hwnix.com/api/get_weaning/$month$lang");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<WeaningResponse> weaningResponse =
        jsonResponse.map((json) => WeaningResponse.fromJson(json)).toList();
    weninglist = weaningResponse;
    return weaningResponse;
  }

  Future<List<BottleResponse>> getbottle(int month) async {
    Uri url = Uri.parse(
        "https://gradhub.hwnix.com/api/get_BottleFeeding/$month$lang");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<BottleResponse> bottleResponse =
        jsonResponse.map((json) => BottleResponse.fromJson(json)).toList();
    bottlelist = bottleResponse;
    return bottleResponse;
  }

  Future<List<BrestFeedingResponse>> getbrest(int month) async {
    Uri url = Uri.parse(
        "https://gradhub.hwnix.com/api/get_BreastFeeding/$month$lang");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<BrestFeedingResponse> brestFeedingResponse = jsonResponse
        .map((json) => BrestFeedingResponse.fromJson(json))
        .toList();
    brestlist = brestFeedingResponse;
    return brestFeedingResponse;
  }

  Future<List<ChildGrothResponse>> getchildgroth(int month) async {
    Uri url =
        Uri.parse("https://gradhub.hwnix.com/api/get_ChildGrowth/$month$lang");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<ChildGrothResponse> childGrothResponse =
        jsonResponse.map((json) => ChildGrothResponse.fromJson(json)).toList();
    childgrothlist = childGrothResponse;
    return childGrothResponse;
  }

  Future<List<TipsResponse>> gettips(int month) async {
    Uri url = Uri.parse("https://gradhub.hwnix.com/api/get_tips/$month$lang");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<TipsResponse> tipsResponse =
        jsonResponse.map((json) => TipsResponse.fromJson(json)).toList();
    tipslist = tipsResponse;
    print(tipsResponse);
    return tipsResponse;
  }

  Future<void> setloginmesage(String loginrespons) async {
    await prefs!.setString(login_messagekey, loginrespons);
  }

  String? getloginmessage() {
    return prefs!.getString(login_messagekey);
  }

  Future<void> setloginid(int loginrespons) async {
    await prefs!.setInt(login_idkey, loginrespons);
  }

  int? getloginid() {
    return prefs!.getInt(login_idkey);
  }

  Future<void> setloginname(String loginrespons) async {
    await prefs!.setString(login_namekey, loginrespons);
  }

  String? getloginname() {
    return prefs!.getString(login_namekey);
  }

  Future<void> setloginemail(String loginrespons) async {
    await prefs!.setString(login_emailkey, loginrespons);
  }

  String? getloginemail() {
    return prefs!.getString(login_emailkey);
  }

  Future<void> setloginphone(String loginrespons) async {
    await prefs!.setString(login_phonekey, loginrespons);
  }

  String? getloginphone() {
    return prefs!.getString(login_phonekey);
  }

  Future<void> setlogincreated(String loginrespons) async {
    await prefs!.setString(login_createdkey, loginrespons);
  }

  String? getlogincreted() {
    return prefs!.getString(login_createdkey);
  }

  Future<void> setloginupdated(String loginrespons) async {
    await prefs!.setString(login_updatedkey, loginrespons);
  }

  String? getloginupdated() {
    return prefs!.getString(login_updatedkey);
  }

  setuserinfo(LoginResponse userinfo) {
    loginResponse = userinfo;
  }

  LoginResponse getloginResponse() {
    return loginResponse;
  }

  Future<void> loading() async {
    prefs = await SharedPreferences.getInstance();

    if (getloginphone() != null) {
      String s = getloginphone()!;
      //final jsonMap = Map<String,dynamic>.from(json.decode(s));
      //var b = SharedResponse.fromJson(jsonMap);
      //var b =  SharedResponse.fromJson(jsonDecode(s));
      print(
          '$s=======================================================================');
      //print(b.toJson().toString());
      LoginResponse lo = LoginResponse(
          message: getloginmessage(),
          user: User(
              id: getloginid(),
              email: getloginemail(),
              createdAt: getlogincreted(),
              updatedAt: getloginupdated(),
              name: getloginname(),
              phone: getloginphone()));
      setuserinfo(lo);
      setuserid(getloginid()!);
    }
  }
}
