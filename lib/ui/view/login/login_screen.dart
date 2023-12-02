import 'package:flutter/material.dart';

import '../register/register_screen.dart';


class Loginscreen extends StatelessWidget {
   Loginscreen({super.key});
  static const String loginroutename ='login';
  GlobalKey formk = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formk,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal:30 ,vertical:20 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 100,),
              Center(child: Image(image:AssetImage('assets/images/logpicture.png'),)),
              Center(child: Image(image:AssetImage('assets/images/NEWBORN.png'))),
              SizedBox(height: 27,),
              Text('Email address',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              Container(
                height: 50,
                child: TextFormField(
                  validator: (value) {
                    if (value! .isEmpty ){
                      return "email address can't be empty";
                    }
                  },
                  decoration: InputDecoration(
                    errorBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'You@Example.com' ,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text('Password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              Container(
                height: 50,
                child: TextFormField(
                  validator: (value) {
                    if (value! .isEmpty ){
                      return "password can't be empty";
                    }
                  },
                  decoration: InputDecoration(
                    errorBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'your Password' ,
                    suffixIcon: ImageIcon(AssetImage('assets/images/eye password logo.png')),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: (){
                 // Navigator.pushNamed(context, RegisterScreen.regroutename);
                },
                  child: Text('Forget Password?',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20, color: Color(0xff8362D7)),textAlign: TextAlign.end,)),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width*0.9,
                height:MediaQuery.sizeOf(context).width*0.15 ,
                child: ElevatedButton(onPressed: (){},
                  child: Text('Sign In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor:Color(0xff8461D5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text("     Don't have account  ",style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
                  InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, RegisterScreen.regroutename);
                      },
                      child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20, color: Color(0xff8362D7)),)),
                ],
              ),
              SizedBox(height: 20,),
              Text('OR',textAlign: TextAlign.center),
              SizedBox(height: 20,),
              Container(
                height: 50,
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
