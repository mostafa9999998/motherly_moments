import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/Chat/chats%20menue/Chats%20menue.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/category.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/home/home.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/todo/todo_screen.dart';

import '../../Chat/Chat contact list/chat contact screen.dart';
import '../../Setting/setting screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Masterscreen extends StatefulWidget {
  const Masterscreen({super.key});
  static const String mastername = 'mastername';

  @override
  State<Masterscreen> createState() => _MasterscreenState();
}

class _MasterscreenState extends State<Masterscreen> {
  int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff8362D7),
        unselectedItemColor:  Color(0xffC8C8C8),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/home.png')),
            label: AppLocalizations.of(context)!.home,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/insights.png')),
            label: AppLocalizations.of(context)!.insights,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/todoicon.png')),
            label: AppLocalizations.of(context)!.todolist,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/chaticon.png')),
            label: AppLocalizations.of(context)!.chating,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: AppLocalizations.of(context)!.setting,
          ),

        ],
        onTap: (index){
          currentindex = index;
          setState(() {});
        },
        currentIndex: currentindex,
      ),
      backgroundColor: Colors.white,
      body: pages[currentindex],
    );
  }
}
List pages =[Weekscalculate(),Category(),Todoscreen(),ChatsMenue(),SettingScreen()];