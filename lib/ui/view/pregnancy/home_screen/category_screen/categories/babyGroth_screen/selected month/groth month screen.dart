import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babygroth%20list%20style.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babygroth%20months%20model.dart';

class Selecctedgrothmonthscreen extends StatelessWidget {
   Selecctedgrothmonthscreen({super.key});
static String selectedmonthname ='selectedmonthname';
  var babygrothlist = Babygrothlist.categrylist();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8362D7),
      body:Center(
        child: Container(
          //color: Color(0xff8362D7),
          child: Text('Soon',textAlign: TextAlign.center,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white)),
        ),
      )

    );
  }
}
