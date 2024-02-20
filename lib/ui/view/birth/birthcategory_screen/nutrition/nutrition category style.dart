import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Nutrition%20model.dart';

class Nutritionstyle extends StatelessWidget {
  Nutritionstyle({super.key, required this.nutrition});
  Nutrition nutrition;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //Selecctedmonthscreen.month = babygrothlist.id ;
        //Selecctedmonthscreen.categ = babygrothlist.screenname ;
        //Navigator.pushNamed(context, Selecctedmonthscreen.selectedmonthname);
      },
      child: Container(
        width:MediaQuery.of(context).size.width * 0.5 ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0x848362d7),
        ),
        height:  MediaQuery.of(context).size.height * 0.14,
        padding: EdgeInsets.symmetric( vertical:MediaQuery.of(context).size.height * 0.01 ,),
        margin: EdgeInsets.symmetric( vertical:MediaQuery.of(context).size.height * 0.009 ,
            horizontal:MediaQuery.of(context).size.width * 0.01 ),
        child: Center(
          child: Text(
            nutrition.title,
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}