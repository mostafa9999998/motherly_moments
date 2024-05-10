import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Nutrition%20model.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/nutrition%20category%20style.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babygroth%20months%20model.dart';
import 'package:provider/provider.dart';
import '../../../../view_model/provider/main provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class NutritionScreen extends StatefulWidget {
  NutritionScreen({super.key});
  static String nutritionname = 'nutrition';

  @override
  State<NutritionScreen> createState() => _NutritionScreenState();
}

class _NutritionScreenState extends State<NutritionScreen> {
 

  
  @override
  Widget build(BuildContext context) {
    var babygrothlist = Babygrothlist.categrylist(context);
    Mainprovider provider = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width * .22,
        elevation: 0.01,
        backgroundColor: Colors.white,
        leadingWidth: MediaQuery.of(context).size.width * .23,
        title: Text(AppLocalizations.of(context)!.nutrition,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        leading: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(width: 15),
          Container(
            height: MediaQuery.of(context).size.width * .18,
            width: MediaQuery.of(context).size.width * .18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(250), color: Colors.black),
            child: Center(
                child: Text(provider.babyname,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
          )
        ]),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              Text(
             AppLocalizations.of(context)!.nutritiontitel,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Row(children: [showwedjetmonth(0,context),],) ,
             Row(children: [ SizedBox(width: MediaQuery.of(context).size.width*.25,),showwedjetmonth(1,context),],) ,
              Row(children: [SizedBox(width: MediaQuery.of(context).size.width*.45,),showwedjetmonth(2,context),],) ,
            ],
          ),
        ),
      ),
    );
   }
  showwedjetmonth(int i,BuildContext context) {
  var list =  Nutrition.categrylist(context);

    return Nutritionstyle(nutrition: list[i] ,);
  }
}