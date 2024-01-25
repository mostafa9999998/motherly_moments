import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babyGroth_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/bodychange/bodychange_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/courses/course_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/exercise/excercise_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/food/foodscreen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/vitamine/vitaminesscreen.dart';

class Categoryl {
  String id;
  String title;
  String imagepath;
  String screenname ;

  Categoryl({required this.id, required this.title, required this.imagepath,required this.screenname});
  static List<Categoryl> categrylist() {
   return[
     Categoryl(id: 'baby groth', title: 'Baby groth', imagepath: 'assets/images/footprints 1.png',screenname: Babygroth.babagrothname),
     Categoryl(id: 'body changes', title: 'Body changes', imagepath: 'assets/images/female-body 1.png',screenname: Bodychange.bodychangename),
     Categoryl(id: 'food', title: 'Food', imagepath: 'assets/images/Food.png',screenname: Food_screen.foodname),
     Categoryl(id: 'vitamines', title: 'Vitamines', imagepath: 'assets/images/vitamine.png',screenname: Vitamines_screen.vitaminename ),
     Categoryl(id: 'excircises', title: 'Exercises', imagepath: 'assets/images/exercise.png',screenname: Exercises_creen.exercisname),
     Categoryl(id: 'courses', title: 'Courses', imagepath: 'assets/images/course.png',screenname: Courses_screen.coursesename)
   ];
  }
}
