import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/food/food%20moel.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/food/food%20style.dart';

class Food_screen extends StatelessWidget {
   Food_screen({super.key});
  static String foodname = 'food';
  var list = Foodlist.foodlist();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .4,
                child: Image.asset('assets/images/food photo.png',
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
                  '  How to eat safely while pregnant',
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      showwedjetmonth(0),
                      showwedjetmonth(1),
                      showwedjetmonth(2),

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
   return Foodsstyle(foodlist: list[i],);
  }
}