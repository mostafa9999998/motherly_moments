import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../data/repo/apis/Api manager/Api manager.dart';
import '../../../view_model/provider/main provider.dart';

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
          return  Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .05,
                  vertical: MediaQuery.of(context).size.height * .05),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Text('Your baby is${snapshot.data!.years}years and ${snapshot.data!.months} months and ${snapshot.data!.days} days old',
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
                      Center(child: Image.asset('assets/images/babybirth.png'))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .05,
                  ),
                  Text('New born will remind you of important milestones about your baby',
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
                Text('Your baby is 0 years and 0 months and 0 days old',
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
                    Center(child: Image.asset('assets/images/babybirth.png'))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                Text('New born will remind you of important milestones about your baby',
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