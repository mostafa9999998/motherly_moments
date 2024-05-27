import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/selected%20month/selected%20month%20screen.dart';

import '../../../../../select_screen/Select_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Courseslist {
  int  id;
  String title;
  String imagepath;
  String screenname;
  String desc;
  Courseslist(
      {required this.id,
        required this.title,
        required this.imagepath,
        required this.screenname,
        required this.desc});
  static List<Courseslist> categrylist(BuildContext context) {
    return [
      Courseslist(
          id: 1,
          title:AppLocalizations.of(context)!.corsetopic1,
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'course',
          desc: 'The first thrimester is the time when\n the baby'),
      Courseslist(
          id: 2,
          title: AppLocalizations.of(context)!.corsetopic2,
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'course',
          desc: 'The first thrimester is the time when\n the baby'),
      Courseslist(
          id: 3,
          title:AppLocalizations.of(context)!.corsetopic3,
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'course',
          desc: 'The first thrimester is the time when\n the baby'),
      Courseslist(
          id: 4,
          title: AppLocalizations.of(context)!.corsetopic4,
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'course',
          desc: 'The first thrimester is the time when\n the baby'),

    ];
  }
}