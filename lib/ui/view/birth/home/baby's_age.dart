import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../data/repo/apis/Api manager/Api manager.dart';
import '../../../view_model/provider/main provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BabyAge extends StatelessWidget {
  const BabyAge({super.key});

  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    var date = provider.getdate();
    return  FutureBuilder(
      future:  Apimanager.birthdate(date),
      builder: (context, snapshot) {
        if (snapshot.hasData){
          if(snapshot.data!.years == null){
            snapshot.data!.years = 0;
            snapshot.data!.months = 0;
            snapshot.data!.days = 0;
          }
          return  Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .05,
                  vertical: MediaQuery.of(context).size.height * .05),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Text('${AppLocalizations.of(context)!.yourbabyis}${snapshot.data!.years}${AppLocalizations.of(context)!.yearsand} ${snapshot.data!.months} ${AppLocalizations.of(context)!.monthsand} ${snapshot.data!.days} ${AppLocalizations.of(context)!.daysold}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),textAlign: TextAlign.center),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .04,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * .7,
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * .18,
                          vertical: MediaQuery.of(context).size.height * .02
                      ),
                      child:
                      Center(child: Image.asset('assets/images/babyphoto.png'))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .05,
                  ),
                  Text(AppLocalizations.of(context)!.birthint,
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 22),
                      textAlign: TextAlign.center),
                ],
              ),
            );
        }
        else if (snapshot.hasError){
          return Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .05,
                vertical: MediaQuery.of(context).size.height * .05),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Text(AppLocalizations.of(context)!.birthweek0,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),textAlign: TextAlign.center),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
                Container(
                    height: MediaQuery.of(context).size.width * .7,
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .18,
                        vertical: MediaQuery.of(context).size.height * .02
                    ),
                    child:
                    Center(child: Image.asset('assets/images/babyphoto.png'))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                Text(AppLocalizations.of(context)!.birthint,
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 22),
                    textAlign: TextAlign.center),
              ],
            ),
          );
        }
        else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}