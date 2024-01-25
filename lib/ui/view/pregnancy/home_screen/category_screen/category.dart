import 'package:flutter/cupertino.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/category_style.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categorylist.dart';

class Category extends StatelessWidget {
   Category({super.key});
   var categorylist =Categoryl.categrylist();
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height*.1,right:MediaQuery.of(context).size.height*.02,
          left: MediaQuery.of(context).size.height*.02 ),
      child: Column(
        children: [
          Text('“ Wish you have a safe\n pregnance “',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18
                ),
                itemBuilder: (context, index) {
                  return Categorysyle(categoryl: categorylist[index]);
                },
              itemCount: categorylist.length,
            ),
          ),
        ],
      ),
    );
  }
}
