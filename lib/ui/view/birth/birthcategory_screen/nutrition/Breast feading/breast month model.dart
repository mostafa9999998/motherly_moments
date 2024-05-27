import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class BreastFeedingMonthmodel{
  int id ;
  String weekname;
  BreastFeedingMonthmodel({required this.id,required this.weekname});
  static List<BreastFeedingMonthmodel> categrylist(BuildContext context) {
    return [
      BreastFeedingMonthmodel(
          id:1 ,
          weekname:AppLocalizations.of(context)!.weekbottel1
      ),
      BreastFeedingMonthmodel(
          id:6 ,
          weekname:AppLocalizations.of(context)!.weekbottel6
      ),
      BreastFeedingMonthmodel(
          id:12 ,
          weekname:AppLocalizations.of(context)!.weekbottel12
      ),
      BreastFeedingMonthmodel(
          id:18 ,
          weekname:AppLocalizations.of(context)!.weekbottel18
      ),
    ];
  }
}