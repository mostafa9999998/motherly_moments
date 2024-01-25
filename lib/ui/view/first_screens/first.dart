import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/first_screens/second.dart';
import 'package:motherly_moments/ui/view/login/login_screen.dart';

class Welcomescreen1 extends StatelessWidget {
  const Welcomescreen1({super.key});
  static const String welcom1name = 'welcom1name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 70,),
            Center(child: Image(image:AssetImage('assets/images/NEWBORN.png'),)),
            SizedBox(height: 40,),
            Center(child: Image.asset('assets/images/intropic1.png',height:MediaQuery.of(context).size.height*.3 )),
            SizedBox(height: 80,),
            Center(child: Text('Welcome',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),)),
            SizedBox(height: 20,),
            Text('Welcome to newborn, your trusted partner for a safe and healthy pregnancy journey.',
                style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
             Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, Loginscreen.loginroutename);
                    },
                    child: Text('  SKIP',style: TextStyle(fontSize:18 ,color: Color(0xff271E4A)))),
                Image.asset('assets/images/dots1.png',height:MediaQuery.of(context).size.height*.02  ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context,Welcomescreen2.welcom2name);
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
