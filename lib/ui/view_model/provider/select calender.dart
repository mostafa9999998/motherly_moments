import 'package:flutter/material.dart';

class Selectcalendr extends ChangeNotifier{
  DateTime date = DateTime.now();
 void setdate(DateTime selecteddate) {
   date = selecteddate ;
 }
 DateTime getdate(){
   return date;
 }

}