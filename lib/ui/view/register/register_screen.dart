import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/utils/loading.dart';
import 'package:motherly_moments/ui/view/register/textfield_pass.dart';
import 'package:motherly_moments/ui/view/register/textfirld_wedget.dart';

import '../../../data/repo/apis/Api manager/Api manager.dart';
import '../login/login_screen.dart';
class RegisterScreen extends StatefulWidget {
   RegisterScreen({super.key});
  static const String regroutename ='regname';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState>  formkey = GlobalKey();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 28,horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                 Center(child: Image(image:AssetImage('assets/images/logpicture.png'),)),
                 Center(child: Image(image:AssetImage('assets/images/NEWBORN.png'))),
                 SizedBox(height: 10,),
                 Textform(title: 'Full Name', hint: 'name',controller: namecontroller,
                 validator: (value) {
                   if (value!.isEmpty || value.trim().isEmpty){
                     return "your name can't be empty";
                   }
                 },),


                 Textform(title: 'Email adress', hint: 'you@example.com',
                     keyboardtype: TextInputType.emailAddress,controller: emailcontroller ,validator:(value) {
                     if (value!.isEmpty || value.trim().isEmpty){
                       return "e-mail can't be empty";
                     }
                     bool emailValid =
                     RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                         .hasMatch(value);
                     if (!emailValid){
                       return 'please enter valid e-mail';
                     }
                   }, ),


                 Textform(title: 'Phone number', hint: '0111111111',
                     keyboardtype: TextInputType.phone,controller:phonecontroller ,validator: (value) {
                     if (value!.isEmpty || value.trim().isEmpty){
                       return "your phone number can't be empty";
                     }
                   },),
                 Textformpass(title: 'Password', hint: 'Your password',iconpath: 'assets/images/eye password logo.png',
                     valiedstring: "password can't be empty",controller: passwordcontroller),
                 Container(
                   width: MediaQuery.sizeOf(context).width*0.9,
                    height:MediaQuery.sizeOf(context).width*0.15 ,
                   child: ElevatedButton(onPressed: (){
                     register();
                   },
                       child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.white),),
                     style: ElevatedButton.styleFrom(
                         backgroundColor:Color(0xff8461D5),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15))),
                   ),
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Already have account',style: TextStyle(fontSize: 18)),
                     InkWell(onTap:() {
                       Navigator.pushReplacementNamed(context, Loginscreen.loginroutename);
                     },child: Text('  sign in ',style: TextStyle(color: Color(0xff8362D7),fontSize: 18)))
                   ],
                 ),
                /* Text('OR',textAlign: TextAlign.center),
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
                         Image.asset('assets/images/Logo.png',height:MediaQuery.of(context).size.height*.03 ),
                         SizedBox(width: 10,),
                         Text('sign up with google',style: TextStyle(fontSize: 16,color: Colors.black))
                       ],
                     ),
                   ),
                 ),*/
               ],
            ),
          ),
        ),
      ),
    );
  }

  void register() async{
    if (formkey.currentState?.validate()==true){
      try{
      showLoading(context);
      var R = Apimanager.register(namecontroller.text, emailcontroller.text, phonecontroller.text, passwordcontroller.text);

      if(await R){
        hideLoading(context);
        showsucsses(context, 'User added successfully');
      } else{
        hideLoading(context);
        showerror(context, 'Email already exists');
      }
      }
          catch(e){
            hideLoading(context);
            showerror(context, 'Some thing went wrong');
          }
    }

  }
}
