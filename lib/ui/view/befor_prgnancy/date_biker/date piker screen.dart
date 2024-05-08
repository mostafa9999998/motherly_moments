import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/befor_prgnancy/baby_weeks.dart';
import 'package:motherly_moments/ui/view/befor_prgnancy/calculating.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../view_model/provider/main provider.dart';

class Datebikerscreen extends StatefulWidget {
  const Datebikerscreen({super.key});
  static const String datepikername = 'datepiker';
  @override
  State<Datebikerscreen> createState() => _DatebikerscreenState();
}

class _DatebikerscreenState extends State<Datebikerscreen> {
 DateTime selectdate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return Scaffold(
      body: Container(
      //  height: MediaQuery.of(context).size.height * 1,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .05,
            vertical: MediaQuery.of(context).size.height * .06),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(AppLocalizations.of(context)!.periodTracker,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21,color:Color(0xff8461D5), ),textAlign: TextAlign.center,),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
                AppLocalizations.of(context)!.periodQuestion,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                textAlign: TextAlign.center),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            InkWell(
              onTap: () {
                selectcalender(context ,provider);

              },
              child: Text(
                  AppLocalizations.of(context)!.selectperioddate,
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.blue),
                  textAlign: TextAlign.center),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              padding:EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.03) ,
              child: Image.asset('assets/images/pregnant.png',color: Colors.black,fit: BoxFit.fill),
            ),
            Spacer(),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.9,
              height: MediaQuery.sizeOf(context).width * 0.15,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context,Babyweeksscreen.babyweeksname);
                },
                child: Text(
                  AppLocalizations.of(context)!.next,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff8461D5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void selectcalender(BuildContext context ,Mainprovider provider ) async{
   var chosendate = await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(Duration(days: 270)),
        lastDate: DateTime.now().add(Duration(days: 270)));
   if (chosendate!= null){
    selectdate = chosendate;
    provider.setdate(chosendate);
   }
  }
}
