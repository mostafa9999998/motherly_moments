
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/selected%20month/selected%20month%20screen.dart';

import '../../../../../select_screen/Select_screen.dart';

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
  static List<Babygrothlist> categrylist() {
    return [
      Babygrothlist(
          id: 1,
          title: 'What Happens at 1 Month',
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Babygrothlist(
          id: 2,
          title: 'What Happens at 2 Month',
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Babygrothlist(
          id: 3,
          title: 'What Happens at 3 Month',
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Babygrothlist(
          id: 4,
          title: 'What Happens at 4 Month',
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Babygrothlist(
          id: 5,
          title: 'What Happens at 5 Month',
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Babygrothlist(
          id: 6,
          title: 'What Happens at 6 Month',
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Babygrothlist(
          id: 7,
          title: 'What Happens at 7 Month',
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Babygrothlist(
          id: 8,
          title: 'What Happens at 8 Month',
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Babygrothlist(
          id: 9,
          title: 'What Happens at 9 Month',
          imagepath: 'assets/images/baby month1.png',
          screenname: 'babyGrowth',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
    ];
  }
}
