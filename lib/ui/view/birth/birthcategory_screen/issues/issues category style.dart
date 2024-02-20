
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/issues/issues%20model.dart';

class CommonIssuestyle extends StatelessWidget {
  CommonIssuestyle({super.key, required this.issues});
   CommonIssues issues;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //Selecctedmonthscreen.month = babygrothlist.id ;
        //Selecctedmonthscreen.categ = babygrothlist.screenname ;
        //Navigator.pushNamed(context, Selecctedmonthscreen.selectedmonthname);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0x848362d7),        ),

        margin: EdgeInsets.symmetric( vertical:MediaQuery.of(context).size.height * 0.005 ,
            horizontal:MediaQuery.of(context).size.width * 0.015 ),
        child: Center(
          child: Text(
            issues.title,
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}