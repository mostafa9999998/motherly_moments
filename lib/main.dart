import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/register/register_screen.dart';

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

      },
      initialRoute: RegisterScreen.regroutename,

    );
  }
}
