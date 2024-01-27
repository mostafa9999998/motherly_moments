import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/befor_prgnancy/baby_weeks.dart';
import 'package:motherly_moments/ui/view/befor_prgnancy/calculating.dart';
import 'package:motherly_moments/ui/view/befor_prgnancy/date_biker/date%20piker%20screen.dart';
import 'package:motherly_moments/ui/view/first_screens/first.dart';
import 'package:motherly_moments/ui/view/first_screens/second.dart';
import 'package:motherly_moments/ui/view/first_screens/third.dart';
import 'package:motherly_moments/ui/view/forgetpassword/screen_email.dart';
import 'package:motherly_moments/ui/view/forgetpassword/screen_newpass.dart';
import 'package:motherly_moments/ui/view/forgetpassword/screen_otp.dart';
import 'package:motherly_moments/ui/view/login/login_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/selected%20month/groth%20month%20screen.dart';
import 'package:motherly_moments/ui/view/register/register_screen.dart';
import 'package:motherly_moments/ui/view/select_screen/Select_screen.dart';
import 'ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babyGroth_screen.dart';
import 'ui/view/pregnancy/home_screen/category_screen/categories/bodychange/bodychange_screen.dart';
import 'ui/view/pregnancy/home_screen/category_screen/categories/courses/course_screen.dart';
import 'ui/view/pregnancy/home_screen/category_screen/categories/exercise/excercise_screen.dart';
import 'ui/view/pregnancy/home_screen/category_screen/categories/food/foodscreen.dart';
import 'ui/view/pregnancy/home_screen/category_screen/categories/vitamine/vitaminesscreen.dart';
import 'ui/view/pregnancy/home_screen/master_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RegisterScreen.regroutename : (_)=> RegisterScreen(),
        Loginscreen.loginroutename : (_)=> Loginscreen(),
        Welcomescreen1.welcom1name : (_) => Welcomescreen1(),
        Welcomescreen2.welcom2name : (_) => Welcomescreen2(),
        Welcomescreen3.welcom3name : (_) => Welcomescreen3(),
        Emailscreen.emailroutename : (_) => Emailscreen(),
        Otpscreen.otproutename : (_) => Otpscreen(),
        Newpassscreen.newpassroutename : (_) => Newpassscreen(),
        Masterscreen.mastername : (_) => Masterscreen(),
        Bodychange.bodychangename : (_) => Bodychange(),
        Babygroth.babagrothname : (_) => Babygroth(),
        Courses_screen.coursesename :(_) => Courses_screen(),
        Vitamines_screen.vitaminename :(_) => Vitamines_screen(),
        Exercises_screen.exercisname : (_) => Exercises_screen(),
        Food_screen.foodname : (_) => Food_screen(),
        Selectscreen.selectname : (_) => Selectscreen(),
        Calculatingscreen.calculatetname : (_) => Calculatingscreen(),
        Babyweeksscreen.babyweeksname : (_) => Babyweeksscreen(),
        Datebikerscreen.datepikername : (_) => Datebikerscreen(),
        Babygroth.babagrothname : (_) => Babygroth(),
        Selecctedgrothmonthscreen.selectedmonthname : (_) => Selecctedgrothmonthscreen(),
      },
      initialRoute: Selectscreen.selectname ,

    );
  }
}
