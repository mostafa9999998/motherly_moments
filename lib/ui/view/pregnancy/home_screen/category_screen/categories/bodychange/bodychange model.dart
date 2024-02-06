

import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/selected%20month/selected%20month%20screen.dart';
import 'package:motherly_moments/ui/view/select_screen/Select_screen.dart';

class Bodychangehlist {
  int  id;
  String title;
  String imagepath;
  String screenname;
  String desc;
  Bodychangehlist(
      {required this.id,
        required this.title,
        required this.imagepath,
        required this.screenname,
        required this.desc});
  static List<Bodychangehlist> categrylist() {
    return [
      Bodychangehlist(
          id: 1,
          title: '1 Month: Fertilization & missed\n period',
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Bodychangehlist(
          id: 2,
          title: '2 Month: Fertilization & missed\n period',
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Bodychangehlist(
          id: 3,
          title: '3 Month: Fertilization & missed\n period',
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Bodychangehlist(
          id: 4,
          title: '4 Month: Fertilization & missed\n period',
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Bodychangehlist(
          id: 5,
          title: '5 Month: Fertilization & missed\n period',
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Bodychangehlist(
          id: 6,
          title: '6 Month: Fertilization & missed\n period',
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Bodychangehlist(
          id: 7,
          title: '7 Month: Fertilization & missed\n period',
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Bodychangehlist(
          id: 8,
          title: '8 Month: Fertilization & missed\n period',
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
      Bodychangehlist(
          id: 9,
          title: '9 Month: Fertilization & missed\n period',
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: 'It might sound starnge, but at 1th month\n pre..'),
    ];
  }
}