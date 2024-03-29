import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Bottle%20feeding/bottle%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Breast%20feading/breast%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Nutrition%20model.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/weaning/weaning%20screen.dart';
import 'package:provider/provider.dart';

import '../../../../view_model/provider/main provider.dart';

class Nutritionstyle extends StatelessWidget {
  Nutritionstyle({super.key, required this.nutrition});
  Nutrition nutrition;
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return InkWell(
      onTap: () async{
        if (nutrition.id == 1){
          Navigator.pushNamed(context, WeaningScreen.weaningScreenname);
          await provider.getweaning(1);
          provider.notifyListeners();
        }else if(nutrition.id == 2){
          Navigator.pushNamed(context, BreastScreen.BreastScreenname );
          await provider.getbrest(1);
          provider.notifyListeners();
        }else{
          Navigator.pushNamed(context, BottleScreen.BottleScreenname );
          await provider.getbottle(1);
          provider.notifyListeners();
        }
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