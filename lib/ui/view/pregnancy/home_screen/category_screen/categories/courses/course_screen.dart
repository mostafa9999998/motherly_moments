import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/courses/courses%20model.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/courses/courses%20style.dart';


class Courses_screen extends StatefulWidget {
   Courses_screen({super.key,});
  static String coursesename = 'course';

  //final String videoUrl;
  @override
  State<Courses_screen> createState() => _Courses_screenState();
}

class _Courses_screenState extends State<Courses_screen> {
  var list = Courseslist.categrylist();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .4,
                child: Image.asset('assets/images/exercises photo.png',
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
                  '  Courses.',
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
                      showwedjetmonth(3),
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
    return Coursesstyle(courseslist: list[i]);
  }

}
