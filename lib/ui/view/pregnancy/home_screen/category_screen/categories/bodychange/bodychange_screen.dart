import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/bodychange/bodychange%20model.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/bodychange/bodychange%20style.dart';

class Bodychange extends StatefulWidget {
   Bodychange({super.key});
  static String bodychangename = 'body';

  @override
  State<Bodychange> createState() => _BodychangeState();
}

class _BodychangeState extends State<Bodychange> {
   var bodychangelist =Bodychangehlist.categrylist();

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
                  'Your Changes body: Up to 9 Months',
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
                          '''Common discomforts like breast tenderness, feeling very tired, peeing more often, heartburn, nausea, and vomiting usually get worse. Your body produces extra blood during pregnancy, and your heart beats faster and harder than usual to carry the extra blood.'''),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width * 95,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        color: Color(0xffa19393),
                      ),
                      showwedjetmonth(0),
                      showwedjetmonth(1),
                      showwedjetmonth(2),
                      showwedjetmonth(3),
                      showwedjetmonth(4),
                      showwedjetmonth(5),
                      showwedjetmonth(6),
                      showwedjetmonth(7),
                      showwedjetmonth(8),
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

  showwedjetmonth(int i) {
   return Bodychangemonths(bodychangehlist: bodychangelist[i],);
  }
}