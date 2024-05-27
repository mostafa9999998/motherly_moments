// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/category_style.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/categorylist.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class BirthCategory extends StatelessWidget {
   BirthCategory({super.key});
   
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    var birthCategoryl =BirthCategoryl.categrylist(context);
    return Container(
      padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height*.03,right:MediaQuery.of(context).size.height*.02,
          left: MediaQuery.of(context).size.height*.02 ),
      child: Column(
        children: [
          Text(AppLocalizations.of(context)!.babycatgeroytitel,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18
                ),
                itemBuilder: (context, index) {
                  return BirthCategorysyle(birthCategoryl: birthCategoryl[index],);
                },
              itemCount: birthCategoryl.length,
            ),
          ),
        ],
      ),
    );
  }
}
