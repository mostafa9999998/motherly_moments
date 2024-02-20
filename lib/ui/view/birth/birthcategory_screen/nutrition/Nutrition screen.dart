import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Nutrition%20model.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/nutrition%20category%20style.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babygroth%20months%20model.dart';

class NutritionScreen extends StatefulWidget {
  NutritionScreen({super.key});
  static String nutritionname = 'nutrition';

  @override
  State<NutritionScreen> createState() => _NutritionScreenState();
}

class _NutritionScreenState extends State<NutritionScreen> {
  var babygrothlist = Babygrothlist.categrylist();
 var list =  Nutrition.categrylist();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              Text(
                '     Take a look on these Nutrition',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Row(children: [showwedjetmonth(0),],) ,
              Row(children: [ SizedBox(width: MediaQuery.of(context).size.width*.25,),showwedjetmonth(1),],) ,
              Row(children: [SizedBox(width: MediaQuery.of(context).size.width*.45,),showwedjetmonth(2),],) ,
            ],
          ),
        ),
      ),
    );
  }
  showwedjetmonth(int i) {
    return Nutritionstyle(nutrition: list[i] ,);
  }
}