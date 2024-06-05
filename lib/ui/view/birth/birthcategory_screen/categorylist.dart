import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/cry%20analizer/cryAnalyzerScreen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/Child%20groth/child%20Groth%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/Tips/tips%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/issues/issues%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Nutrition%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/vaccinations/vaccination%20screen.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/vitamine/vitaminesscreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
  static List<BirthCategoryl> categrylist(BuildContext context) {
    return [
      BirthCategoryl(
          id: 1,
          title:AppLocalizations.of(context)!.childgrowth,
          imagepath: 'assets/images/footprints 1.png',
          screenname: ChildGrothScreen.ChildGrothScreenname),
      BirthCategoryl(
          id: 2,
          title: AppLocalizations.of(context)!.tipsandactivities,
          imagepath: 'assets/images/female-body 1.png',
          screenname: TipsScreen.TipsScreenname),
      BirthCategoryl(
          id: 3,
          title:AppLocalizations.of(context)!.nutrition,
          imagepath: 'assets/images/Food.png',
          screenname: NutritionScreen.nutritionname),
      BirthCategoryl(
          id: 4,
          title:AppLocalizations.of(context)!.vaccinations,
          imagepath: 'assets/images/vitamine.png',
          screenname: VaccinationScreen.VaccinationScreenname),
      BirthCategoryl(
          id: 5,
          title:AppLocalizations.of(context)!.commonissues,
          imagepath: 'assets/images/commonissues.png',
          screenname: CommonIssuesScreen.issuesname),
      BirthCategoryl(
          id: 6,
          title:AppLocalizations.of(context)!.cry,
          imagepath: 'assets/images/babyrecord.png',
          screenname: CryAnalyzerScreen.CryAnalyzerScreennzme),
    ];
  }
}
