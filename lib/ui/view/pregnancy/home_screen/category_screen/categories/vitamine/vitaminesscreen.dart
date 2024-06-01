import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/vitamine/vitamine%20model.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/vitamine/vitamine%20style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Vitamines_screen extends StatelessWidget {
   Vitamines_screen({super.key});
  static String vitaminename = 'vitamine';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .4,
                child: Image.asset('assets/images/vitamine photo.png',
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
                  AppLocalizations.of(context)!.vitamintitel,
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
                     showwedjetmonth(0,context),
                      showwedjetmonth(1,context),
                      showwedjetmonth(2,context),
                      showwedjetmonth(3, context),

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

  showwedjetmonth(int i,BuildContext context) {
    var list = Vitaminelist.vitaminelist(context);
    return Vitaminestyle(vitaminelist: list[i],);
  }
}