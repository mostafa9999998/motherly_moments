import 'package:flutter/material.dart';
import 'package:motherly_moments/data/repo/moduls/login/LoginResponse.dart';
import 'package:motherly_moments/ui/view/forgetpassword/screen_email.dart';
import 'package:motherly_moments/ui/view/select_screen/Select_screen.dart';
import 'package:motherly_moments/ui/view_model/provider/main%20provider.dart';
import 'package:provider/provider.dart';
import '../../utils/loading.dart';
import '../register/register_screen.dart';
import '../../../data/repo/apis/Api manager/Api manager.dart';


class Loginscreen extends StatefulWidget {
   Loginscreen({super.key});
  static const String loginroutename ='login';

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
   TextEditingController emailcontroller = TextEditingController();

   TextEditingController passwordcontroller = TextEditingController();

  GlobalKey<FormState> formk = GlobalKey();
   bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: ()async {
          return false ;
        },
        child: Form(
          key: formk,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal:30 ,vertical:20 ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 40,),
                  Center(child: Container(
                      height: MediaQuery.of(context).size.height*.3,
                      width: MediaQuery.of(context).size.width*.99,
                      child: Image(image:AssetImage('assets/images/Napp_logo.png'),fit: BoxFit.fill,))),
                  Text('Email address',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  Container(
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty || value.trim().isEmpty){
                          return "e-mail can't be empty";
                        }
                        bool emailValid =
                        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value);
                        if (!emailValid){
                          return 'please enter valid e-mail';
                        }
                      },
                      controller: emailcontroller,
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
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'You@Example.com' ,
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text('Password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  Container(
                    child: TextFormField(
                      validator: (value) {
                        if (value! .isEmpty || value.trim().isEmpty){
                          return "password can't be empty";
                        }else if (value.length < 8){
                          return'password shoud be at least 8 Characters';
                        }
                      },
                      controller: passwordcontroller,
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
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'your Password' ,
                        suffixIcon: InkWell(
                            onTap: () {
                              if(obscure==true){
                                obscure = false ;
                              }
                              else {
                                obscure = true ;
                              }
                              setState(() {});
                            },
                            child: ImageIcon(AssetImage('assets/images/eye password logo.png'))),
                      ),
                      obscureText: obscure,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Emailscreen.emailroutename);
                    },
                      child: Text('Forget Password?',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20, color: Color(0xff8362D7)),textAlign: TextAlign.end,)),
                  SizedBox(
                    height: 25,
                  ),
                   Container(
                    width: MediaQuery.sizeOf(context).width*0.9,
                    height:MediaQuery.sizeOf(context).width*0.15 ,
                    child: ElevatedButton(onPressed: (){
                      login();
                    //  Navigator.pushReplacementNamed(context, Selectscreen.selectname);
                    },
                      child: Text('Sign In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor:Color(0xff8461D5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Text("     Don't have account  ",style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
                      InkWell(
                          onTap: (){
                            Navigator.pushReplacementNamed(context, RegisterScreen.regroutename);
                          },
                          child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20, color: Color(0xff8362D7)),)),
                    ],
                  ),
                  /*SizedBox(height: 20,),
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
      ),
    );
  }

  void login() async {
    if (formk.currentState?.validate()==true){
      try{
        showLoading(context);
        var R = Apimanager.login(emailcontroller.text,passwordcontroller.text);
        LoginResponse loginresponse = await Apimanager.loginresponse(emailcontroller.text,passwordcontroller.text);
            Mainprovider providr = Provider.of<Mainprovider>(context,listen: false);
           providr.fgetuserid(emailcontroller.text,passwordcontroller.text);
        if(await R){
          hideLoading(context);
          providr.setloginid(loginresponse.user!.id!);
          providr.setloginemail(loginresponse.user!.email!);
          providr.setloginname(loginresponse.user!.name!);
          providr.setloginmesage(loginresponse.message!);
          providr.setloginupdated(loginresponse.user!.updatedAt!);
          providr.setlogincreated(loginresponse.user!.createdAt!);
          providr.setloginphone(loginresponse.user!.phone!);
          Navigator.pushReplacementNamed(context, Selectscreen.selectname);
        } else{
          hideLoading(context);
          showerror(context, 'Email or Password is incorrect');
        }
      }
      catch(e){
        hideLoading(context);
        showerror(context, e.toString());
      }
    }
  }
}