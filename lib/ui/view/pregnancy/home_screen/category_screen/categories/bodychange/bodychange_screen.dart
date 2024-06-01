import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/bodychange/bodychange%20model.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/bodychange/bodychange%20style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Bodychange extends StatefulWidget {
   Bodychange({super.key});
  static String bodychangename = 'body';

  @override
  State<Bodychange> createState() => _BodychangeState();
}

class _BodychangeState extends State<Bodychange> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .4,
                child: Image.asset('assets/images/bodychange photo.png',
                    fit: BoxFit.fill),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .28,
                ),
                Text(
                  AppLocalizations.of(context)!.bodychangeT,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),

                Container(
                  padding: EdgeInsets.only(left:MediaQuery.of(context).size.width * .05 ,top:MediaQuery.of(context).size.height * .03 ,right:MediaQuery.of(context).size.width * .05  ),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.bodyChangehint),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width * 95,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        color: Color(0xffa19393),
                      ),
                      showwedjetmonth(0,context),
                      showwedjetmonth(1,context),
                      showwedjetmonth(2,context),
                      showwedjetmonth(3,context),
                      showwedjetmonth(4,context),
                      showwedjetmonth(5,context),
                      showwedjetmonth(6,context),
                      showwedjetmonth(7,context),
                      showwedjetmonth(8,context),
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }

  showwedjetmonth(int i,BuildContext context) {
    var bodychangelist =Bodychangehlist.categrylist(context);
    return Bodychangemonths(bodychangehlist: bodychangelist[i],);
  }
}