import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/selected%20month/selected%20month%20screen.dart';

import '../../../../../select_screen/Select_screen.dart';

class Vitaminelist {
  int  id;
  String title;
  String imagepath;
  String screenname;
  String desc;
  Vitaminelist(
      {required this.id,
        required this.title,
        required this.imagepath,
        required this.screenname,
        required this.desc});
  static List<Vitaminelist> vitaminelist() {
    return [
      Vitaminelist(
          id: 1,
          title: 'omega3 ',
          imagepath: 'assets/images/vitamine month1.png',
          screenname: 'vitamin',
          desc: 'The first thrimester is the time when\n the baby'),
      Vitaminelist(
          id: 2,
          title: 'zinc ',
          imagepath: 'assets/images/omega3.png',
          screenname: 'vitamin',
          desc: 'The first thrimester is the time when\n the baby'),
      Vitaminelist(
          id: 3,
          title: 'iron ',
          imagepath: 'assets/images/irons.png',
          screenname: 'vitamin',
          desc: 'The first thrimester is the time when\n the baby'),
      Vitaminelist(
          id: 4,
          title: 'viitamin c ',
          imagepath: 'assets/images/vitamine c.png',
          screenname: 'vitamin',
          desc: 'The first thrimester is the time when\n the baby'),
    ];
  }
}