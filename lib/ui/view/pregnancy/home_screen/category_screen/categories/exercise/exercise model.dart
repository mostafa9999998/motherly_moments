import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Exerciseslist {
  int  id;
  String title;
  String imagepath;
  String screenname;
  String desc;
  Exerciseslist(
      {required this.id,
        required this.title,
        required this.imagepath,
        required this.screenname,
        required this.desc});
  static List<Exerciseslist> categrylist(BuildContext context) {
    return [
      Exerciseslist(
          id: 1,
          title:AppLocalizations.of(context)!.extopic1,
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: 2,
          title:AppLocalizations.of(context)!.extopic2,
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: 3,
          title: AppLocalizations.of(context)!.extopic3,
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: 4,
          title:AppLocalizations.of(context)!.extopic4,
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
     /* Exerciseslist(
          id: 5,
          title: 'Yoga helps in you in 5 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: 6,
          title: 'Yoga helps in you in 6 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: 7,
          title: 'Yoga helps in you in 7 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: 8,
          title: 'Yoga helps in you in 8 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: 9,
          title: 'Yoga helps in you in 9 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'exercise',
          desc: 'The first thrimester is the time when\n the baby'),*/
    ];
  }
}