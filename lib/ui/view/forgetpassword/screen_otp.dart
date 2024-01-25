import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/forgetpassword/screen_newpass.dart';
import 'package:pinput/pinput.dart';

class Otpscreen extends StatelessWidget {
   Otpscreen({super.key});
  static const String otproutename ='otp';
  GlobalKey formo = GlobalKey();
   final defaultPinTheme = PinTheme(
     width: 56,
     height: 56,
     textStyle: TextStyle(fontSize: 22, color: Color.fromRGBO(30, 60, 87, 1),
         fontWeight: FontWeight.w600),
     decoration: BoxDecoration(
       border: Border.all(color: Colors.black,),
       borderRadius: BorderRadius.circular(20)
     )
   );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key: formo,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal:30 ,vertical:20 ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 80,),
                Center(child: Image(image:AssetImage('assets/images/logpicture.png'),)),
                Center(child: Image(image:AssetImage('assets/images/NEWBORN.png'))),
                SizedBox(height: 30,),
                Text('Enter OTP.', style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),textAlign: TextAlign.center),
                SizedBox(height: 15,),
                Text('To recent password, please enter the 4 digit pin sent to your mail..', style: TextStyle(fontSize: 16),textAlign: TextAlign.center),
                SizedBox(height: 40,),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child:Pinput(
                      length: 4,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: defaultPinTheme,
                      submittedPinTheme: defaultPinTheme,
                      validator: (s) {},
                      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                      showCursor: true,
                      onCompleted: (pin) => print(pin),
                    ) ,
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: MediaQuery.sizeOf(context).width*0.9,
                  height:MediaQuery.sizeOf(context).width*0.15 ,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, Newpassscreen.newpassroutename);
                  },
                    child: Text('Continue',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:Color(0xff8461D5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                SizedBox(height: 30,),
                Text("Didn’t get the code?", style: TextStyle(fontSize: 18),textAlign: TextAlign.center),
                SizedBox(height: 15,),
                Text('Resend Code', style: TextStyle(fontSize: 18,color: Color(0xff8362D7)),textAlign: TextAlign.center),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
