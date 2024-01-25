import 'package:flutter/material.dart';

import '../login/login_screen.dart';

class Welcomescreen3 extends StatelessWidget {
  const Welcomescreen3({super.key});
  static const String welcom3name = 'welcom3name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 90,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Tracking ',style: TextStyle(fontWeight:FontWeight.w600 ,fontSize: 30),),
                Text('Tools',style: TextStyle(fontWeight:FontWeight.w600 ,fontSize: 30,color:Color(0xff8461D5) ),),
              ],
            ),
            SizedBox(height: 25,),
            Center(child:Image.asset('assets/images/intropic2.png',height:MediaQuery.of(context).size.height*.3 )),
            SizedBox(height: 60,),
            Text('''Tracking Tools The app will provide tracking tools to help users monitor their pregnancy and postpartum progress,including weight tracking, contraction timing, and breastfeeding tracker.'''
            ,style: TextStyle(fontSize: 18), textAlign: TextAlign.center
            ),
           Spacer(),
            Container(
              width: MediaQuery.sizeOf(context).width*0.9,
              height:MediaQuery.sizeOf(context).width*0.15 ,
              child: ElevatedButton(onPressed: (){
                Navigator.pushReplacementNamed(context,Loginscreen.loginroutename);
              },
                child: Text('Get Started',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    backgroundColor:Color(0xff8461D5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),

              ),
            ),
                SizedBox( height: 20,),
                Center(child: Image.asset('assets/images/dots3.png',height:MediaQuery.of(context).size.height*.02)),
          ],
        ),
      ),
    );
  }
}