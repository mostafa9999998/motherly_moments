// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/exercise/exercise%20model.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/exercise/exercise%20style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Exercises_screen extends StatelessWidget {
   Exercises_screen({super.key});
  static String exercisname = 'exercise';
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .4,
                child: Image.asset('assets/images/exercises photo.png',
                    fit: BoxFit.fill),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .28,
                ),
                Text(
                  AppLocalizations.of(context)!.exerisetitel,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),

                Container(
                  padding: EdgeInsets.only(left:MediaQuery.of(context).size.width * .05 ,top:MediaQuery.of(context).size.height * .03 ,right:MediaQuery.of(context).size.width * .05  ),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      showwedjetmonth(0,context),
                      showwedjetmonth(1,context),
                      showwedjetmonth(2,context),
                      showwedjetmonth(3,context),
                      /*showwedjetmonth(4),
                      showwedjetmonth(5),
                      showwedjetmonth(6),
                      showwedjetmonth(7),
                      showwedjetmonth(8),*/
                    ],
                  ),
                ),



              ],
            ),
          )
        ],
      ),
    );
  }

  showwedjetmonth(int i,BuildContext context) {
   var list = Exerciseslist.categrylist(context);
   return Exercisesstyle(exerciseslist: list[i],);
  }
}