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
          title: 'course in 1 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'course',
          desc: 'The first thrimester is the time when\n the baby'),
      Courseslist(
          id: 2,
          title: 'course in 2 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'course',
          desc: 'The first thrimester is the time when\n the baby'),
      Courseslist(
          id: 3,
          title: 'course in 3 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'course',
          desc: 'The first thrimester is the time when\n the baby'),
      Courseslist(
          id: 4,
          title: 'course in 4 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: 'course',
          desc: 'The first thrimester is the time when\n the baby'),

    ];
  }
}