import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/first_screens/first.dart';
import 'package:motherly_moments/ui/view/select_screen/Select_screen.dart';
import 'package:motherly_moments/ui/view_model/provider/main%20provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


class DisplayWedget extends StatefulWidget {
  const DisplayWedget({super.key});
static String diplayname = 'DisplayWedgetname';

  @override
  State<DisplayWedget> createState() => _DisplayWedgetState();
}

class _DisplayWedgetState extends State<DisplayWedget> {
  @override
  String? userinfo;
  bool initial =true;

  Widget build(BuildContext context) {

    Mainprovider provider =Provider.of<Mainprovider>(context);
    if (initial){
    SharedPreferences.getInstance().then((value) {
      setState(()  {
        initial=false;
        //await
        userinfo = value.getString('login5key');
        provider.loading();
      });
    });
    return Center(child: CircularProgressIndicator());
  }else if (userinfo != null){
      return Selectscreen();
    }else {
     return Welcomescreen1();
    }


  }
}
