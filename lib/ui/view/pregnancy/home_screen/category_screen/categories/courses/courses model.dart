import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/selected%20month/selected%20month%20screen.dart';

import '../../../../../select_screen/Select_screen.dart';

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
  static List<Courseslist> categrylist() {
    return [
      Courseslist(
          id: 1,
          title: 'Main info',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'course',
          desc: 'The first thrimester is the time when\n the baby'),
      Courseslist(
          id: 2,
          title: '10 Mom tips',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'course',
          desc: 'The first thrimester is the time when\n the baby'),
      Courseslist(
          id: 3,
          title: 'Advice',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'course',
          desc: 'The first thrimester is the time when\n the baby'),
      Courseslist(
          id: 4,
          title: 'Duty',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'course',
          desc: 'The first thrimester is the time when\n the baby'),

    ];
  }
}