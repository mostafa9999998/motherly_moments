import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ChildgrothMonthmodel{
  int id ;
  String weekname;
  ChildgrothMonthmodel({required this.id,required this.weekname});
  static List<ChildgrothMonthmodel> categrylist(BuildContext context) {
    return [
      ChildgrothMonthmodel(
          id:1 ,
          weekname:AppLocalizations.of(context)!.tipsmonth1
      ),
      ChildgrothMonthmodel(
          id:3 ,
          weekname:AppLocalizations.of(context)!.tipsmonth3
      ),
      ChildgrothMonthmodel(
          id:6 ,
          weekname:AppLocalizations.of(context)!.tipsmonth6
      ),
      ChildgrothMonthmodel(
          id:9 ,
          weekname:AppLocalizations.of(context)!.tipsmonth9
      ),
      ChildgrothMonthmodel(
          id:12 ,
          weekname:AppLocalizations.of(context)!.tipsmonth12
      ),
      ChildgrothMonthmodel(
          id:15 ,
          weekname:AppLocalizations.of(context)!.tipsmonth15
      ),
      ChildgrothMonthmodel(
          id:18 ,
          weekname:AppLocalizations.of(context)!.tipsmonth18
      ),
      ChildgrothMonthmodel(
          id:21 ,
          weekname:AppLocalizations.of(context)!.tipsmonth21
      ),
    ];
  }
}