import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/Tips/tips%20month%20model.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/Tips/tips%20question%20style.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/Tips/tipsweektap.dart';
import 'package:provider/provider.dart';
import '../../../../view_model/provider/main provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});
static String TipsScreenname ='TipsScreen';
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width * .22,
        elevation: 0.01,
        backgroundColor: Colors.white,
        leadingWidth: MediaQuery.of(context).size.width * .23,
        title: Text(AppLocalizations.of(context)!.tipsandactivities,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        leading: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(width: 15),
          Container(
            height: MediaQuery.of(context).size.width * .18,
            width: MediaQuery.of(context).size.width * .18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(250), color: Colors.black),
            child: Center(
                child: Text(provider.babyname,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
          )
        ]),
      ),
      body: Container(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  showtaps(0,context),
                  showtaps(1,context),
                  showtaps(2,context),
                  showtaps(3,context),
                  showtaps(4,context),
                  showtaps(5,context),
                  showtaps(6,context),
                  showtaps(7,context),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*.75,
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * .05,
                  top:MediaQuery.of(context).size.height * .03 ,
                  left:MediaQuery.of(context).size.width * .05 ),
              child:
              ListView.builder(
                itemBuilder: (context, index) {
                  return TipsQuestionStyle(tipsResponse: provider.tipslist[index]);
                },
                itemCount: provider.tipslist.length,
              )
            ),
          ],
        ),
      ),
    );
  }

  showtaps(int i,BuildContext context) {
    var list=TipsMonthmodel.categrylist(context);
   return TipsWeekTap(tipsMonthmodel:list[i] ,);
  }
}
