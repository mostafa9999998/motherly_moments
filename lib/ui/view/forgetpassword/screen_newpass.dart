import 'package:flutter/material.dart';

class Newpassscreen extends StatelessWidget {
   Newpassscreen({super.key});
  static const String newpassroutename ='newpass';
  GlobalKey formp = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key: formp,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal:25 ,vertical:20 ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 80,),
                Center(child: Image(image:AssetImage('assets/images/logpicture.png'),)),
                Center(child: Image(image:AssetImage('assets/images/NEWBORN.png'))),
                SizedBox(height: 60,),
                Text('New Password.', style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                SizedBox(height: 30,),
                Text('Enter new password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
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
                      hintText: 'atleast 8 character' ,
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text('Re-enter password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
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
                      hintText: 'atleast 8 character' ,
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  width: MediaQuery.sizeOf(context).width*0.9,
                  height:MediaQuery.sizeOf(context).width*0.15 ,
                  child: ElevatedButton(onPressed: (){
                  },
                    child: Text('Reset Password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:Color(0xff8461D5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
