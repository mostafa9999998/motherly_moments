import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babygroth%20list%20style.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babygroth%20months%20model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Babygroth extends StatefulWidget {
   Babygroth({super.key});
  static String babagrothname = 'groth';

  @override
  State<Babygroth> createState() => _BabygrothState();
}

class _BabygrothState extends State<Babygroth> {
 
  @override
  Widget build(BuildContext context) {
     var babygrothlist = Babygrothlist.categrylist(context);

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .4,
                child: Image.asset('assets/images/babygroth photo.png',
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
                  AppLocalizations.of(context)!.babygeowthT,
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
                          AppLocalizations.of(context)!.babygrowthhint),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width * 95,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        color: Color(0xffa19393),
                      ),
                       Container(
                        child: ListView.builder(shrinkWrap: true,
                        itemCount:babygrothlist.length ,
                          itemBuilder: (context,index){
                           return Babygrothmonths(babygrothlist: babygrothlist[index]);
                        }),
                       )
                      // showwedjetmonth(0),
                      // showwedjetmonth(1),
                      // showwedjetmonth(2),
                      // showwedjetmonth(3),
                      // showwedjetmonth(4),
                      // showwedjetmonth(5),
                      // showwedjetmonth(6),
                      // showwedjetmonth(7),
                      // showwedjetmonth(8),
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
  //  showwedjetmonth(int i) {
  // return Babygrothmonths(babygrothlist: babygrothlist[i]);
  // }
}
