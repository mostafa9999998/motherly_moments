import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:motherly_moments/ui/view/Setting/langauge_bottom_sheet.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../login/login_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  SharedPreferences? prefs;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            AppLocalizations.of(context)!.language,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 18,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff8461D5),
            ),
            child: InkWell(
              onTap: (){
                ShowLanguageButtonSheet();
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.english,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      size: 30,
                      color: Colors.white,
                    )
                  ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: ()  {
               //prefs!.remove('login5key');
              Navigator.pushReplacementNamed(context, Loginscreen.loginroutename);
            },
            child: Container(
              padding: EdgeInsets.all(10),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff797486),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(5.0,8.0)
                    )
                  ]
              ),
              child: Text(
                AppLocalizations.of(context)!.logout,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,

                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void ShowLanguageButtonSheet(){

    showModalBottomSheet(context: context, builder: (context)=> languageBottomSheet());
  }
}
