//import 'dart:js';

import 'package:flutter/src/widgets/framework.dart';
import 'package:motherly_moments/ui/cry%20analizer/cryAnalyzerScreen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babyGroth_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/bodychange/bodychange_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/courses/course_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/exercise/excercise_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/food/foodscreen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/vitamine/vitaminesscreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Categoryl {
  String id;
  String title;
  String imagepath;
  String screenname;

  Categoryl(
      {required this.id,
      
      required this.title,
      required this.imagepath,
      required this.screenname});
    static  List<Categoryl> categrylist(BuildContext context) {
    return [
      Categoryl(
          
          id: 'baby groth',
          title: AppLocalizations.of(context)!.babygrowth,
          imagepath: 'assets/images/footprints 1.png',
          screenname: Babygroth.babagrothname),
      Categoryl(
          id: 'body changes',
          title:  AppLocalizations.of(context)!.bodychanges,
          imagepath: 'assets/images/female-body 1.png',
          screenname: Bodychange.bodychangename),
      Categoryl(
          id: 'food',
          title:  AppLocalizations.of(context)!.food,
          imagepath: 'assets/images/Food.png',
          screenname: Food_screen.foodname),
      Categoryl(
          id: 'vitamines',
          title:  AppLocalizations.of(context)!.vitamines,
          imagepath: 'assets/images/vitamine.png',
          screenname: Vitamines_screen.vitaminename),
      Categoryl(
          id: 'excircises',
          title:  AppLocalizations.of(context)!.exercises,
          imagepath: 'assets/images/exercise.png',
          screenname: Exercises_screen.exercisname),
      Categoryl(
          id: 'courses',
          title:  AppLocalizations.of(context)!.courses,
          imagepath: 'assets/images/course.png',
          screenname: Courses_screen.coursesename),
    ];
  }
}
