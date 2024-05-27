import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/selected%20month/selected%20month%20screen.dart';

import '../../../../../select_screen/Select_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Foodlist {
  int id;
  String title;
  String imagepath;
  String screenname;
  String desc;
  Foodlist(
      {required this.id,
        required this.title,
        required this.imagepath,
        required this.screenname,
        required this.desc});
  static List<Foodlist> foodlist(BuildContext context) {
    return [
      Foodlist(
          id: 1,
          title: AppLocalizations.of(context)!.foodtopic1,
          imagepath: 'assets/images/foodmonth1.png',
          screenname: 'Food',
          desc: 'The first thrimester is the time when\n the baby'),
      Foodlist(
          id: 3,
          title:AppLocalizations.of(context)!.foodtopic2 ,
          imagepath: 'assets/images/foodmonth1.png',
          screenname: 'Food',
          desc: 'The second thrimester is the time when\n the baby'),
      Foodlist(
          id: 6,
          title: AppLocalizations.of(context)!.foodtopic3,
          imagepath: 'assets/images/foodmonth1.png',
          screenname: 'Food',
          desc: 'The last thrimester is the time when\n the baby'),
    ];
  }
}