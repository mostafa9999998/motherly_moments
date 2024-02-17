import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart';
import 'package:motherly_moments/data/repo/moduls/baby%20groth/categoriesResponse.dart';
import 'package:motherly_moments/data/repo/moduls/login/LoginResponse.dart';
import 'package:motherly_moments/data/repo/moduls/pregnancy%20weeks/WeeksResponse.dart';
import 'package:motherly_moments/data/repo/moduls/todo/AddtaskResponse.dart';

import '../../../../ui/view/pregnancy/home_screen/todo/DeleteResponse.dart';
import '../../moduls/category_video/ExerciseResponse.dart';
import '../../moduls/login/LoginBody.dart';
import '../../moduls/register/RegisterBody.dart';
import '../../moduls/register/RegisterResponse.dart';
import '../../moduls/todo/TaskBody.dart';
import '../../moduls/todo/TaskResponse.dart';
import '../../moduls/todo/UpdateBody.dart';
import '../../moduls/todo/UpdateResponse.dart';


class Apimanager{
 late final userid ;
 static Future<BabygrothResponse> getcategorydesc(int month ,String categ) async{
   try{
     Uri url = Uri.parse("https://gradhub.hwnix.com/api/get_${categ}_${month}");
     Response response = await get(url);
      print(response.body[0]);
     Map json   = jsonDecode(response.body);
     BabygrothResponse babygrothResponse= BabygrothResponse.fromJson(json);
     return babygrothResponse;

   } catch(e){
     throw e ;
   }
  }

 static Future<ExerciseResponse> getcategoryvediodesc(int month ,String categ) async{
   try{
     Uri url = Uri.parse("https://gradhub.hwnix.com/api/get_${categ}/${month}");
     Response response = await get(url);
     print(response.body[0]);
     Map json   = jsonDecode(response.body);
     ExerciseResponse exerciseResponse= ExerciseResponse.fromJson(json);
     return exerciseResponse;

   } catch(e){
     throw e ;
   }
 }


 static Future<bool> register(String name,String email,String phone,String password) async {
   Uri url = Uri.parse("https://gradhub.hwnix.com/api/register");
   final connectivityResult = await (Connectivity().checkConnectivity());
   if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi ) {
     // I am connected to a mobile network.
     RegisterBody registerBody = RegisterBody(
      email: email,
      name: name,
      password: password,
      phone: phone) ;
    var response = await post(url,body: registerBody.toJson());
    if (response.statusCode >=200 || response.statusCode<300 ){
      var b = RegisterResponse.fromJson(jsonDecode(response.body));
      if (b.message =='User added successfully'){
        return true;
      }else{return false;}
    }else{return false;}
   } else {
     throw Exception('network failed') ;
   }
 }

 static Future<bool> login(String email,String password) async {
   Uri url = Uri.parse("https://gradhub.hwnix.com/api/login");
   final connectivityResult = await (Connectivity().checkConnectivity());
   if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi ) {
     // I am connected to a mobile network.
     LoginBody loginBody = LoginBody(
         email: email,
         password: password,
         ) ;
     var response = await post(url,body: loginBody.toJson());
     if (response.statusCode >=200 || response.statusCode<300 ){
       var b = LoginResponse.fromJson(jsonDecode(response.body));
       if (b.message =='Login successful'){
         return true;
       }else{return false;}
     }else{return false;}
   } else {
     throw Exception('network failed') ;
   }


 }



 static Future<WeeksResponse> Weeks(int day ,int month,int year) async{
   try{
     Uri url = Uri.parse("https://gradhub.hwnix.com/api/calculateWeeksAndDaysPregrency/${day}-${month}-${year}");
     Response response = await get(url);
     Map json   = jsonDecode(response.body);
     WeeksResponse weeksResponse= WeeksResponse.fromJson(json);
     return weeksResponse;
   } catch(e){
     throw e ;
   }
 }



 static Future<bool> addtask( String title,String content,String userId,DateTime dueDate) async {
   Uri url = Uri.parse("https://gradhub.hwnix.com/api/addList");
   final connectivityResult = await (Connectivity().checkConnectivity());
   if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi ) {
     // I am connected to a mobile network.
     TaskBody taskBody = TaskBody(content:content ,dueDate:dueDate ,title:title ,userId:userId ) ;
     var response = await post(url,body: taskBody.toJson());
     if (response.statusCode >=200 || response.statusCode<300 ){
       var b = AddtaskResponse.fromJson(jsonDecode(response.body));
       print(b.result);
       if (b.result =='Data has been saved'){
         print(b.result);
         return true;
       }else{ return false;}
     }else{
       return false;}
   } else {
     throw Exception('network failed') ;
   }
 }
 static Future<bool> updatetask( int taskid, String title,String content) async {
   Uri url = Uri.parse("https://gradhub.hwnix.com/api/updatellist/$taskid");
   final connectivityResult = await (Connectivity().checkConnectivity());
   if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi ) {
     // I am connected to a mobile network.
     UpdateBody updateBody = UpdateBody(title: title,content:content ) ;
     var response = await put(url,body: updateBody.toJson());
     if (response.statusCode >=200 || response.statusCode<300 ){
       var b = UpdateResponse.fromJson(jsonDecode(response.body));
       print(b.result);
       if (b.result =='Updated successfully'){
         print(b.result);
         return true;
       }else{ return false;}
     }else{
       return false;}
   } else {
     throw Exception('network failed') ;
   }
 }





 static Future<bool> deletetask(int taskid) async{
   try{
     Uri url = Uri.parse("https://gradhub.hwnix.com/api/deleteList/$taskid");
     Response response = await delete(url);
     Map json   = jsonDecode(response.body);
     DeleteResponse deleteResponse= DeleteResponse.fromJson(json);
     if (deleteResponse.result == 'Deleted successfully'){
     return true;}else{ return false;}
   } catch(e){
     throw e ;
   }
 }

}



/* static Future<List<TaskResponse>> gettasks(int userid) async{
   try{
     Uri url = Uri.parse("https://gradhub.hwnix.com/api/getListById/$userid");
     Response response = await get(url);
     List<dynamic> jsonResponse = jsonDecode(response.body);
     List<TaskResponse> taskList = jsonResponse.map((json) => TaskResponse.fromJson(json)).toList();
     return taskList;

   } catch(e){
     throw e ;
   }
 }*/