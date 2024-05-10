import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class WeaningMonthmodel{
  int id ;
  String weekname;
  WeaningMonthmodel({required this.id,required this.weekname});
  static List<WeaningMonthmodel> categrylist(BuildContext context) {
    return [
      WeaningMonthmodel(
          id:1 ,
          weekname:AppLocalizations.of(context)!.weekbottel1
      ),
      WeaningMonthmodel(
          id:6 ,
          weekname:AppLocalizations.of(context)!.weekbottel6
      ),
      WeaningMonthmodel(
          id:12 ,
          weekname:AppLocalizations.of(context)!.weekbottel12
      ),
      WeaningMonthmodel(
          id:18 ,
          weekname:AppLocalizations.of(context)!.weekbottel18
      ),
    ];
  }
}