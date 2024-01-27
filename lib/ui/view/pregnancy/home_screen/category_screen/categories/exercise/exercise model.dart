import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/selected%20month/groth%20month%20screen.dart';

import '../../../../../select_screen/Select_screen.dart';

class Exerciseslist {
  String id;
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
  static List<Exerciseslist> categrylist() {
    return [
      Exerciseslist(
          id: '1',
          title: 'Yoga helps in you in 1 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: Selecctedgrothmonthscreen.selectedmonthname,
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: '2',
          title: 'Yoga helps in you in 2 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: Selecctedgrothmonthscreen.selectedmonthname,
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: '3',
          title: 'Yoga helps in you in 3 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: Selecctedgrothmonthscreen.selectedmonthname,
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: '4',
          title: 'Yoga helps in you in 4 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: Selecctedgrothmonthscreen.selectedmonthname,
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: '5',
          title: 'Yoga helps in you in 5 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: Selecctedgrothmonthscreen.selectedmonthname,
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: '6',
          title: 'Yoga helps in you in 6 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: Selecctedgrothmonthscreen.selectedmonthname,
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: '7',
          title: 'Yoga helps in you in 7 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: Selecctedgrothmonthscreen.selectedmonthname,
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: '8',
          title: 'Yoga helps in you in 8 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: Selecctedgrothmonthscreen.selectedmonthname,
          desc: 'The first thrimester is the time when\n the baby'),
      Exerciseslist(
          id: '9',
          title: 'Yoga helps in you in 9 month',
          imagepath: 'assets/images/exercisemonth1.png',
          screenname: Selectscreen.selectname,
          desc: 'The first thrimester is the time when\n the baby'),
    ];
  }
}