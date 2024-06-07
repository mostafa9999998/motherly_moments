// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/bodychange/bodychange_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/courses/course_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/exercise/excercise_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/food/foodscreen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/vitamine/vitaminesscreen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/category_style.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categorylist.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Category extends StatefulWidget {
   Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
   
  int currentindex=0;

  @override
  Widget build(BuildContext context) {
    var categorylist =Categoryl.categrylist(context);
    return Container(
      padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height*.1,right:MediaQuery.of(context).size.height*.02,
          left: MediaQuery.of(context).size.height*.02 ),
      child: Column(
        children: [
          Text('“ Wish you have a safe\n pregnance “',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18
                ),
                itemBuilder: (context, index) {
                  return Categorysyle(categoryl:categorylist [index]);
                },
              itemCount: categorylist.length,
            ),
          ),
        ],
      ),
    );
  }
}
