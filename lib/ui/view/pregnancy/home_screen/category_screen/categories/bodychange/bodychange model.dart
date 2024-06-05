

import 'package:flutter/cupertino.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/selected%20month/selected%20month%20screen.dart';
import 'package:motherly_moments/ui/view/select_screen/Select_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
  static List<Bodychangehlist> categrylist(BuildContext context) {
    return [
      Bodychangehlist(
          id: 1,
          title: AppLocalizations.of(context)!.bodychm1,
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: AppLocalizations.of(context)!.bodychdesm1),
      Bodychangehlist(
          id: 2,
          title: AppLocalizations.of(context)!.bodychm2,
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: AppLocalizations.of(context)!.bodychdesm2),
      Bodychangehlist(
          id: 3,
          title: AppLocalizations.of(context)!.bodychm3,
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: AppLocalizations.of(context)!.bodychdesm3),
      Bodychangehlist(
          id: 4,
          title:AppLocalizations.of(context)!.bodychm4,
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: AppLocalizations.of(context)!.bodychdesm4),
      Bodychangehlist(
          id: 5,
          title:AppLocalizations.of(context)!.bodychm5,
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: AppLocalizations.of(context)!.bodychdesm5),
      Bodychangehlist(
          id: 6,
          title: AppLocalizations.of(context)!.bodychm6,
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: AppLocalizations.of(context)!.bodychdesm6),
      Bodychangehlist(
          id: 7,
          title: AppLocalizations.of(context)!.bodychm7,
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: AppLocalizations.of(context)!.bodychdesm7),
      Bodychangehlist(
          id: 8,
          title:AppLocalizations.of(context)!.bodychm8,
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc: AppLocalizations.of(context)!.bodychdesm8),
      Bodychangehlist(
          id: 9,
          title: AppLocalizations.of(context)!.bodychm9,
          imagepath: 'assets/images/body month1.png',
          screenname: 'bodyChange',
          desc:AppLocalizations.of(context)!.bodychdesm9 ),
    ];
  }
}