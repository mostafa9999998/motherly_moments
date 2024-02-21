import 'package:motherly_moments/ui/view/birth/birthcategory_screen/Child%20groth/child%20Groth%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/Tips/tips%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/issues/issues%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Nutrition%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/vaccinations/vaccination%20screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/vitamine/vitaminesscreen.dart';

class BirthCategoryl {
  int id;
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
          id: 1,
          title: 'Child groth',
          imagepath: 'assets/images/footprints 1.png',
          screenname: ChildGrothScreen.ChildGrothScreenname),
      BirthCategoryl(
          id: 2,
          title: 'Tips and activities',
          imagepath: 'assets/images/female-body 1.png',
          screenname: TipsScreen.TipsScreenname),
      BirthCategoryl(
          id: 3,
          title: 'Nutrition',
          imagepath: 'assets/images/Food.png',
          screenname: NutritionScreen.nutritionname),
      BirthCategoryl(
          id: 4,
          title: 'Vaccinations',
          imagepath: 'assets/images/vitamine.png',
          screenname: VaccinationScreen.VaccinationScreenname),
      BirthCategoryl(
          id: 5,
          title: 'Common issues',
          imagepath: 'assets/images/commonissues.png',
          screenname: CommonIssuesScreen.issuesname),
    ];
  }
}
