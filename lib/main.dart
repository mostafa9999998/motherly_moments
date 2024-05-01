import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/Chat/Chat%20screen/Chat%20screen.dart';
import 'package:motherly_moments/ui/view/befor_prgnancy/baby_weeks.dart';
import 'package:motherly_moments/ui/view/befor_prgnancy/date_biker/date%20piker%20screen.dart';
import 'package:motherly_moments/ui/view/birth/before%20birth/baby%20info.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/Child%20groth/child%20Groth%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/Tips/tips%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/issues/Issuse%20article/issuse%20article.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/issues/issues%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Bottle%20feeding/bottle%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Breast%20feading/breast%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Nutrition%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/weaning/weaning%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/vaccinations/vaccination%20screen.dart';
import 'package:motherly_moments/ui/view/first_screens/first.dart';
import 'package:motherly_moments/ui/view/first_screens/second.dart';
import 'package:motherly_moments/ui/view/first_screens/third.dart';
import 'package:motherly_moments/ui/view/forgetpassword/screen_email.dart';
import 'package:motherly_moments/ui/view/forgetpassword/screen_newpass.dart';
import 'package:motherly_moments/ui/view/forgetpassword/screen_otp.dart';
import 'package:motherly_moments/ui/view/login/login_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/selected%20month/select%20month%20(video).dart';
import 'package:motherly_moments/ui/view/register/register_screen.dart';
import 'package:motherly_moments/ui/view/select_screen/Select_screen.dart';
import 'package:motherly_moments/ui/view_model/provider/main%20provider.dart';
import 'package:provider/provider.dart';
import 'ui/view/birth/BirthMaster_bar.dart';
import 'ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babyGroth_screen.dart';
import 'ui/view/pregnancy/home_screen/category_screen/categories/bodychange/bodychange_screen.dart';
import 'ui/view/pregnancy/home_screen/category_screen/categories/courses/course_screen.dart';
import 'ui/view/pregnancy/home_screen/category_screen/categories/exercise/excercise_screen.dart';
import 'ui/view/pregnancy/home_screen/category_screen/categories/food/foodscreen.dart';
import 'ui/view/pregnancy/home_screen/category_screen/categories/selected month/selected month screen.dart';
import 'ui/view/pregnancy/home_screen/category_screen/categories/vitamine/vitaminesscreen.dart';
import 'ui/view/pregnancy/home_screen/master_bar.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Mainprovider provider = Mainprovider();
  runApp(ChangeNotifierProvider(
    create:(context) =>provider,
      child: const MyApp()));
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
        Babyweeksscreen.babyweeksname : (_) => Babyweeksscreen(),
        Datebikerscreen.datepikername : (_) => Datebikerscreen(),
        Selecctedmonthscreen.selectedmonthname : (_) => Selecctedmonthscreen(),
        SelectmonthscreenV.selectedmonthvname : (_) => SelectmonthscreenV(),
        BirthMasterscreen.birthmastername : (_) => BirthMasterscreen(),
        BabyInfoScreen.babyInfoScreenname : (_) => BabyInfoScreen(),
        CommonIssuesScreen.issuesname :(_) => CommonIssuesScreen(),
        NutritionScreen.nutritionname : (_)=> NutritionScreen(),
        IssuesArticle.issuearticlename : (_) => IssuesArticle(),
        WeaningScreen.weaningScreenname :(_)=> WeaningScreen(),
        BreastScreen.BreastScreenname : (_) => BreastScreen(),
        BottleScreen.BottleScreenname : (_) => BottleScreen(),
        TipsScreen.TipsScreenname : (_) => TipsScreen(),
        ChildGrothScreen.ChildGrothScreenname : (_) => ChildGrothScreen(),
        VaccinationScreen.VaccinationScreenname :(_) => VaccinationScreen(),
        ChatScreen.ChatScreenname : (_) => ChatScreen()
      },
      initialRoute:Welcomescreen1.welcom1name ,
    );
  }
}
