import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:motherly_moments/data/repo/moduls/baby%20groth/categoriesResponse.dart';
import 'package:motherly_moments/data/repo/moduls/baby%20groth/categriesresponsear.dart';
import 'package:motherly_moments/data/repo/moduls/birth/IssuesResponse.dart';
import 'package:motherly_moments/data/repo/moduls/chat/AddFriendBody.dart';
import 'package:motherly_moments/data/repo/moduls/chat/FriendsResponse.dart';
import 'package:motherly_moments/data/repo/moduls/chat/chatbot/BotMessageBody.dart';
import 'package:motherly_moments/data/repo/moduls/chat/chatbot/BotResponse.dart';
import 'package:motherly_moments/data/repo/moduls/login/LoginResponse.dart';
import 'package:motherly_moments/data/repo/moduls/pregnancy%20weeks/WeeksResponse.dart';
import 'package:motherly_moments/data/repo/moduls/todo/AddtaskResponse.dart';
import 'package:provider/provider.dart';
import '../../../../ui/view/pregnancy/home_screen/todo/DeleteResponse.dart';
import '../../../../ui/view_model/provider/main provider.dart';
import '../../moduls/birth date/BirthDateBody.dart';
import '../../moduls/birth date/BirthDateRespnse.dart';
import '../../moduls/birth/IssusesNameResponse.dart';
import '../../moduls/birth/nutrition/WeaningResponse.dart';
import '../../moduls/category_video/ExerciseResponse.dart';
import '../../moduls/chat/DoctorsResponse.dart';
import '../../moduls/login/LoginBody.dart';
import '../../moduls/register/RegisterBody.dart';
import '../../moduls/register/RegisterResponse.dart';
import '../../moduls/todo/TaskBody.dart';
import '../../moduls/todo/UpdateBody.dart';
import '../../moduls/todo/UpdateResponse.dart';

class Apimanager {
  late final userid;
  static String apikey = "https://gradhub.hwnix.com";
  static String lang = "/en";
  // var providerr = Provider.of<Mainprovider>(context as BuildContext);

  static Future<BabygrothResponse> getcategorydesc(
      int month, String categ, String langauge) async {
    try {
      Uri url;
      if (langauge == "/en") {
        // lang = "/${providerr.appLanguage}";
        url = Uri.parse("$apikey/api/get_${categ}_${month}$langauge");
        Response response = await get(url);
        print(response.body[0]);
        Map json = jsonDecode(response.body);
        BabygrothResponse babygrothResponse = BabygrothResponse.fromJson(json);
        return babygrothResponse;
      } else {
        url = Uri.parse("$apikey/api/get_${categ}_${month}$langauge");
        Response response = await get(url);
        print(response.body[0]);
        Map json = jsonDecode(response.body);
        BabygrothResponsear babygrothResponse =
            BabygrothResponsear.fromJson(json);
        BabygrothResponse babygrothResponsee = BabygrothResponse(
            categoryId: babygrothResponse.categoryId,
            description: babygrothResponse.description,
            fullSrc: babygrothResponse.fullSrc,
            id: babygrothResponse.id,
            image: babygrothResponse.image,
            month: babygrothResponse.month,
            title: babygrothResponse.title);
        return babygrothResponsee;
      }
    } catch (e) {
      throw e;
    }
  }

  static Future<ExerciseResponse> getcategoryvediodesc(
      int month, String categ, String language) async {
    try {
      Uri url = Uri.parse("$apikey/api/get_${categ}/${month}$language");
      Response response = await get(url);
      print(response.body[0]);
      Map json = jsonDecode(response.body);
      if (language == "/en") {
        ExerciseResponse exerciseResponse = ExerciseResponse.fromJson(json);
        return exerciseResponse;
      }
      else{ ExerciseResponse exerciseResponse = ExerciseResponse.fromJsonar(json);
        return exerciseResponse;}
    } catch (e) {
      throw e;
    }
  }

  static Future<LoginResponse> loginresponse(
      String email, String password) async {
    Uri url = Uri.parse("$apikey/api/login");
    // I am connected to a mobile network.
    LoginBody loginBody = LoginBody(
      email: email,
      password: password,
    );
    var response = await post(url, body: loginBody.toJson());

    var b = LoginResponse.fromJson(jsonDecode(response.body));
    return b;
  }

  static Future<bool> register(
      String name, String email, String phone, String password) async {
    Uri url = Uri.parse("$apikey/api/register");
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a mobile network.
      RegisterBody registerBody = RegisterBody(
          email: email, name: name, password: password, phone: phone);
      var response = await post(url, body: registerBody.toJson());
      if (response.statusCode >= 200 || response.statusCode < 300) {
        var b = RegisterResponse.fromJson(jsonDecode(response.body));
        if (b.message == 'User added successfully') {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      throw Exception('network failed');
    }
  }

  static Future<bool> login(String email, String password) async {
    Uri url = Uri.parse("$apikey/api/login");
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a mobile network.
      LoginBody loginBody = LoginBody(
        email: email,
        password: password,
      );
      var response = await post(url, body: loginBody.toJson());
      if (response.statusCode >= 200 || response.statusCode < 300) {
        var b = LoginResponse.fromJson(jsonDecode(response.body));
        if (b.message == 'Login successful') {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      throw Exception('network failed');
    }
  }

  static Future<WeeksResponse> Weeks(int day, int month, int year) async {
    try {
      Uri url = Uri.parse(
          "$apikey/api/calculateWeeksAndDaysPregrency/${day}-${month}-${year}");
      Response response = await get(url);
      Map json = jsonDecode(response.body);
      WeeksResponse weeksResponse = WeeksResponse.fromJson(json);
      return weeksResponse;
    } catch (e) {
      throw e;
    }
  }

  static Future<bool> addtask(
      String title, String content, String userId, DateTime dueDate) async {
    Uri url = Uri.parse("$apikey/api/addList");
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a mobile network.
      TaskBody taskBody = TaskBody(
          content: content, dueDate: dueDate, title: title, userId: userId);
      var response = await post(url, body: taskBody.toJson());
      if (response.statusCode >= 200 || response.statusCode < 300) {
        var b = AddtaskResponse.fromJson(jsonDecode(response.body));
        print(b.result);
        if (b.result == 'Data has been saved') {
          print(b.result);
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      throw Exception('network failed');
    }
  }

  static Future<bool> updatetask(
      int taskid, String title, String content) async {
    Uri url = Uri.parse("$apikey/api/updatellist/$taskid");
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a mobile network.
      UpdateBody updateBody = UpdateBody(title: title, content: content);
      var response = await put(url, body: updateBody.toJson());
      if (response.statusCode >= 200 || response.statusCode < 300) {
        var b = UpdateResponse.fromJson(jsonDecode(response.body));
        print(b.result);
        if (b.result == 'Updated successfully') {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      throw Exception('network failed');
    }
  }

  static Future<bool> deletetask(int taskid) async {
    try {
      Uri url = Uri.parse("$apikey/api/deleteList/$taskid");
      Response response = await delete(url);
      Map json = jsonDecode(response.body);
      DeleteResponse deleteResponse = DeleteResponse.fromJson(json);
      if (deleteResponse.result == 'Deleted successfully') {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw e;
    }
  }

  static Future<BirthDateRespnse> birthdate(DateTime birhday) async {
    Uri url = Uri.parse("$apikey/api/calculateAge");
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a mobile network.
      DateTime birthdayDateTime = birhday;

      // Format the DateTime object into a string
      String formattedBirthday =
          DateFormat('yyyy-MM-dd').format(birthdayDateTime);

      BirthDateBody birthDateBody = BirthDateBody(birthday: formattedBirthday);
      var response = await post(url, body: birthDateBody.toJson());
      var b = BirthDateRespnse.fromJson(jsonDecode(response.body));
      print(b);
      return b;
    } else {
      throw Exception('network failed');
    }
  }

  static Future<List<IssuesResponse>> getissues(
      int issue_id, String langauge) async {
    Uri url = Uri.parse("$apikey/api/get_issue/$issue_id$lang");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    if (langauge == "/en") {
      List<IssuesResponse> issuesResponse =
          jsonResponse.map((json) => IssuesResponse.fromJson(json)).toList();
      return issuesResponse;
    } else {
      List<IssuesResponse> issuesResponse =
          jsonResponse.map((json) => IssuesResponse.fromJsonar(json)).toList();
      return issuesResponse;
    }
  }

  static Future<List<WeaningResponse>> getweaning(int month) async {
    Uri url = Uri.parse("$apikey/api/get_weaning/$month$lang");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<WeaningResponse> weaningResponse =
        jsonResponse.map((json) => WeaningResponse.fromJson(json)).toList();
    return weaningResponse;
  }

  static Future<List<IssusesNameResponse>> getissuesname(
      String langauge) async {
    Uri url = Uri.parse("$apikey/api/get_issues$lang");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    if (langauge == "/en") {
      List<IssusesNameResponse> issusesNameResponse = jsonResponse
          .map((json) => IssusesNameResponse.fromJson(json))
          .toList();
      return issusesNameResponse;
    } else {
      List<IssusesNameResponse> issusesNameResponse = jsonResponse
          .map((json) => IssusesNameResponse.fromJsonar(json))
          .toList();
      return issusesNameResponse;
    }
  }

  static Future<List<DoctorsResponse>> getdoctors() async {
    Uri url = Uri.parse("$apikey/api/get_doc");
    Response response = await get(url);
    List<dynamic> jsonResponse = jsonDecode(response.body);
    List<DoctorsResponse> doctorsResponse =
        jsonResponse.map((json) => DoctorsResponse.fromJson(json)).toList();
    return doctorsResponse;
  }

  static Future<BotResponse> sendtobot(String messag) async {
    Uri url = Uri.parse("$apikey/api/sendai");
    // I am connected to a mobile network.
    BotMessageBody loginBody = BotMessageBody(message: messag);
    var response = await post(url, body: loginBody.toJson());

   var b = BotResponse.fromJson(jsonDecode(response.body));
   return b ;

 }


 static Future<FriendsResponse> getfriends (int userid)async{
   Uri url = Uri.parse("$apikey/api/getfriend/$userid");
   Response response = await get(url);
   Map json   = jsonDecode(response.body);
   FriendsResponse friendsResponse= FriendsResponse.fromJson(json);
   return friendsResponse ;
 }


 static Future addfriend(int userid,int reciver) async {
   Uri url = Uri.parse("$apikey/api/addfriend");
   final connectivityResult = await (Connectivity().checkConnectivity());
   if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi ) {
     // I am connected to a mobile network.
     AddFriendBody addFriendBody = AddFriendBody(
       userId: '$userid',
       friendId: '$reciver',
     );
     var response = await post(url, body: addFriendBody.toJson());
     print(response.toString());
     //var b = LoginResponse.fromJson(jsonDecode(response.body));
   }
 }

}
