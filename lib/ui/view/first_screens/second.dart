import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/first_screens/third.dart';
import 'package:motherly_moments/ui/view/login/login_screen.dart';

class Welcomescreen2 extends StatelessWidget {
  const Welcomescreen2({super.key});
  static const String welcom2name = 'welcom2name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 70,),
            Row(
              children: [
                Text('Educational ',style: TextStyle(fontWeight:FontWeight.w600 ,fontSize: 30),),
                Text('Resources',style: TextStyle(fontWeight:FontWeight.w600 ,fontSize: 30,color:Color(0xff8461D5) ),),
              ],
            ),
            SizedBox(height: 40,),
            Center(child: Image(image:AssetImage('assets/images/intropic2.png'),)),
            SizedBox(height: 80,),
            Text('The app will provide educational resources to help users learn about maternal health, including articles, videos, and podcasts.',
                style: TextStyle(fontSize: 18), textAlign: TextAlign.center
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: (){
                      Navigator.pushReplacementNamed(context,Loginscreen.loginroutename);
                    },
                    child: Text('  SKIP',style: TextStyle(fontSize:18 ,color: Color(0xff271E4A)))),
                Image(image:AssetImage('assets/images/dots2.png')),
                InkWell(
                    onTap: (){
                      Navigator.pushReplacementNamed(context,Welcomescreen3.welcom3name);
                    },
                    child: Text('NEXT  ',style:TextStyle(fontSize:18 ,color: Color(0xff271E4A))))
              ],
            )
          ],
        ),
      ),
    );
  }
}