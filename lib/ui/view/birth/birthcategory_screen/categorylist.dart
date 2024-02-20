import 'package:motherly_moments/ui/view/birth/birthcategory_screen/issues/issues%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Nutrition%20screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babyGroth_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/bodychange/bodychange_screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/vitamine/vitaminesscreen.dart';

class BirthCategoryl {
  String id;
  String title;
  String imagepath;
  String screenname;

  BirthCategoryl(
      {required this.id,
      required this.title,
      required this.imagepath,
      required this.screenname});
  static List<BirthCategoryl> categrylist() {
    return [
      BirthCategoryl(
          id: 'child groth',
          title: 'Child groth',
          imagepath: 'assets/images/footprints 1.png',
          screenname: Babygroth.babagrothname),
      BirthCategoryl(
          id: 'tips and activities',
          title: 'Tips and activities',
          imagepath: 'assets/images/female-body 1.png',
          screenname: Bodychange.bodychangename),
      BirthCategoryl(
          id: 'nutrition',
          title: 'Nutrition',
          imagepath: 'assets/images/Food.png',
          screenname: NutritionScreen.nutritionname),
      BirthCategoryl(
          id: 'vaccinations',
          title: 'Vaccinations',
          imagepath: 'assets/images/vitamine.png',
          screenname: Vitamines_screen.vitaminename),
      BirthCategoryl(
          id: 'Common issues',
          title: 'Common issues',
          imagepath: 'assets/images/commonissues.png',
          screenname: CommonIssuesScreen.issuesname),
    ];
  }
}
