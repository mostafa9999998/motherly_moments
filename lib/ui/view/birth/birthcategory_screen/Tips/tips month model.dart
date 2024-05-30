import 'package:flutter/material.dart';import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TipsMonthmodel{
  int id ;
  String weekname;
  TipsMonthmodel({required this.id,required this.weekname});
  static List<TipsMonthmodel> categrylist(BuildContext context) {
    return [
      TipsMonthmodel(
          id:1 ,
          weekname:AppLocalizations.of(context)!.tipsmonth1
      ),
      TipsMonthmodel(
          id:3 ,
          weekname:AppLocalizations.of(context)!.tipsmonth3
      ),
      TipsMonthmodel(
          id:6 ,
          weekname:AppLocalizations.of(context)!.tipsmonth6
      ),
      TipsMonthmodel(
          id:9 ,
          weekname:AppLocalizations.of(context)!.tipsmonth9
      ),
      TipsMonthmodel(
          id:12 ,
          weekname:AppLocalizations.of(context)!.tipsmonth12
      ),
      TipsMonthmodel(
          id:15 ,
          weekname:AppLocalizations.of(context)!.tipsmonth15
      ),
      TipsMonthmodel(
          id:18 ,
          weekname:AppLocalizations.of(context)!.tipsmonth18
      ),
      TipsMonthmodel(
          id:21,
          weekname:AppLocalizations.of(context)!.tipsmonth21
      ),
    ];
  }
}