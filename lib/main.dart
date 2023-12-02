import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/first_screens/first.dart';
import 'package:motherly_moments/ui/view/first_screens/second.dart';
import 'package:motherly_moments/ui/view/first_screens/third.dart';
import 'package:motherly_moments/ui/view/login/login_screen.dart';
import 'package:motherly_moments/ui/view/register/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RegisterScreen.regroutename : (_)=> RegisterScreen(),
        Loginscreen.loginroutename : (_)=> Loginscreen(),
        Welcomescreen1.welcom1name : (_) => Welcomescreen1(),
        Welcomescreen2.welcom2name : (_) => Welcomescreen2(),
        Welcomescreen3.welcom3name : (_) => Welcomescreen3(),
      },
      initialRoute: Welcomescreen1.welcom1name,

    );
  }
}
