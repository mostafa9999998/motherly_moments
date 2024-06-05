
// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/selected%20month/selected%20month%20screen.dart';

import '../../../../../select_screen/Select_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Babygrothlist {
  int  id;
  String title;
  String imagepath;
  String screenname;
  String desc;
  Babygrothlist(
      {required this.id,
      required this.title,
      required this.imagepath,
      required this.screenname,
      required this.desc});
  static List<Babygrothlist> categrylist(BuildContext context) {
    return [
      Babygrothlist(
          id: 1,
          title: AppLocalizations.of(context)!.monthQ1,
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc: AppLocalizations.of(context)!.monthDes1),
      Babygrothlist(
          id: 2,
          title:  AppLocalizations.of(context)!.monthQ2,
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc:  AppLocalizations.of(context)!.monthDes2),
      Babygrothlist(
          id: 3,
          title:  AppLocalizations.of(context)!.monthQ3,
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc:  AppLocalizations.of(context)!.monthDes3),
      Babygrothlist(
          id: 4,
          title:  AppLocalizations.of(context)!.monthQ4,
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc:  AppLocalizations.of(context)!.monthDes4),
      Babygrothlist(
          id: 5,
          title:  AppLocalizations.of(context)!.monthQ5,
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc:  AppLocalizations.of(context)!.monthDes5),
      Babygrothlist(
          id: 6,
          title:  AppLocalizations.of(context)!.monthQ6,
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc:  AppLocalizations.of(context)!.monthDes6),
      Babygrothlist(
          id: 7,
          title:  AppLocalizations.of(context)!.monthQ7,
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc:  AppLocalizations.of(context)!.monthDes7),
      Babygrothlist(
          id: 8,
          title:  AppLocalizations.of(context)!.monthQ8,
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc:  AppLocalizations.of(context)!.monthDes8),
      Babygrothlist(
          id: 9,
          title:  AppLocalizations.of(context)!.monthQ9,
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc:  AppLocalizations.of(context)!.monthDes9),
    ];
  }
}
