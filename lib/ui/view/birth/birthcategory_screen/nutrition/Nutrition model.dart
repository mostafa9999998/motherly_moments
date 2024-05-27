import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Nutrition {
  int id;
  String title;
  String screenname;
  // String desc;
  Nutrition({
    required this.id,
    required this.title,
    required this.screenname,
    //required this.desc
  });
  static List<Nutrition> categrylist(BuildContext context) {
    return [
      Nutrition(
        id: 1,
        title:  AppLocalizations.of(context)!.weaning,
        screenname: 'nutrition',
        //desc: 'It might sound starnge, but at 1th month\n pre..'
      ),
      Nutrition(
        id: 2,
        title: AppLocalizations.of(context)!.breastFeeding,
        screenname: 'nutrition',
        // desc: 'It might sound starnge, but at 1th month\n pre..'
      ),
      Nutrition(
        id: 3,
        title:  AppLocalizations.of(context)!.bottleFeeding,
        screenname: 'nutrition',
        //desc: 'It might sound starnge, but at 1th month\n pre..'
      ),
    ];
  }
}
