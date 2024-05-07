import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/Chat/chats%20menue/Chats%20menue.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/category.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/home/home.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/todo/todo_screen.dart';

import '../../Chat/Chat contact list/chat contact screen.dart';
import '../../Setting/setting screen.dart';

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
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/insights.png')),
            label: 'Insights',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/todoicon.png')),
            label: 'To do list',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/chaticon.png')),
            label: 'Chating',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
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