import 'dart:convert';
import 'package:http/http.dart';
import 'package:motherly_moments/data/repo/moduls/baby%20groth/BabygrothResponse.dart';


class BabygrothApimanager{

 static Future<BabygrothResponse> getbabygroth(int month ,String categ) async{
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
}