import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/register/textfield_pass.dart';
import 'package:motherly_moments/ui/register/textfirld_wedget.dart';

class RegisterScreen extends StatefulWidget {
   RegisterScreen({super.key});
  static const String regroutename ='regname';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 28,horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               Center(child: Image(image:AssetImage('assets/images/logpicture.png'),)),
               Center(child: Image(image:AssetImage('assets/images/NEWBORN.png'))),
               SizedBox(height: 10,),
               Textform(title: 'Full Name', hint: 'name',valiedstring: "your name can't be empty"),
               Textform(title: 'Email adress', hint: 'you@example.com',valiedstring: "e-mail can't be empty"),
               Textform(title: 'Phone number', hint: '0111111111',valiedstring: "your phone number can't be empty"),
               Textformpass(title: 'Password', hint: 'Your password',iconpath: 'assets/images/eye password logo.png',valiedstring: "password can't be empty"),
               Textformpass(title: 'Confirm password', hint: 'confirm',iconpath: 'assets/images/eye password logo.png',valiedstring: "password can't be empty"),
               Container(
                 width: MediaQuery.sizeOf(context).width*0.9,
                  height:MediaQuery.sizeOf(context).width*0.15 ,
                 child: ElevatedButton(onPressed: (){},
                     child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.white),),
                   style: ElevatedButton.styleFrom(
                       backgroundColor:Color(0xff8461D5),
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15))),
                 ),
               ),
               SizedBox(
                 height: 8,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('Already have account',style: TextStyle(fontSize: 16)),
                   InkWell(child: Text('  sign in ',style: TextStyle(color: Color(0xff8362D7),fontSize: 16)))
                 ],
               ),
               Text('OR',textAlign: TextAlign.center),
               Container(
                 height: 35,
                 child: ElevatedButton(
                   onPressed: (){},
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.white,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10))),
                   child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Image(image:AssetImage('assets/images/Logo.png')),
                       SizedBox(width: 10,),
                       Text('sign up with google',style: TextStyle(fontSize: 16,color: Colors.black))
                     ],
                   ),
                 ),
               ),
             ],
          ),
        ),
      ),
    );
  }
}
