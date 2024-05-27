import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/selected%20month/selected%20month%20screen.dart';

import '../../../../../select_screen/Select_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  static List<Vitaminelist> vitaminelist(BuildContext context) {
    return [
      Vitaminelist(
          id: 1,
          title: AppLocalizations.of(context)!.vitamintopic1,
          imagepath: 'assets/images/vitamine month1.png',
          screenname: 'vitamin',
          desc: 'The first thrimester is the time when\n the baby'),
      Vitaminelist(
          id: 2,
          title: AppLocalizations.of(context)!.vitamintopic2,
          imagepath: 'assets/images/omega3.png',
          screenname: 'vitamin',
          desc: 'The first thrimester is the time when\n the baby'),
      Vitaminelist(
          id: 3,
          title: AppLocalizations.of(context)!.vitamintopic3,
          imagepath: 'assets/images/irons.png',
          screenname: 'vitamin',
          desc: 'The first thrimester is the time when\n the baby'),
      Vitaminelist(
          id: 4,
          title: AppLocalizations.of(context)!.vitamintopic4,
          imagepath: 'assets/images/vitamine c.png',
          screenname: 'vitamin',
          desc: 'The first thrimester is the time when\n the baby'),
    ];
  }
}