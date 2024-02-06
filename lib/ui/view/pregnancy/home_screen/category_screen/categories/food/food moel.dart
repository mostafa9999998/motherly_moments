import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/selected%20month/selected%20month%20screen.dart';

import '../../../../../select_screen/Select_screen.dart';

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
  static List<Foodlist> foodlist() {
    return [
      Foodlist(
          id: 1,
          title: 'Healthy eating in first 3 months',
          imagepath: 'assets/images/foodmonth1.png',
          screenname: Selecctedmonthscreen.selectedmonthname,
          desc: 'The first thrimester is the time when\n the baby'),
      Foodlist(
          id: 2,
          title: 'Healthy eating in Second 3 months',
          imagepath: 'assets/images/foodmonth1.png',
          screenname: Selecctedmonthscreen.selectedmonthname,
          desc: 'The second thrimester is the time when\n the baby'),
      Foodlist(
          id: 3,
          title: 'Healthy eating in Last 3 months',
          imagepath: 'assets/images/foodmonth1.png',
          screenname: Selecctedmonthscreen.selectedmonthname,
          desc: 'The last thrimester is the time when\n the baby'),
    ];
  }
}