import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Bottlefeeding{
  int id ;
  String weekname;
  Bottlefeeding({required this.id,required this.weekname});
  static List<Bottlefeeding> categrylist(BuildContext context) {
    return [
      Bottlefeeding(
          id:1 ,
          weekname:AppLocalizations.of(context)!.weekbottel1
      ),
      Bottlefeeding(
          id:6 ,
          weekname:AppLocalizations.of(context)!.weekbottel6
      ),
      Bottlefeeding(
          id:12 ,
          weekname:AppLocalizations.of(context)!.weekbottel12
      ),
      Bottlefeeding(
          id:18 ,
          weekname:AppLocalizations.of(context)!.weekbottel18
      ),
    ];
  }
}