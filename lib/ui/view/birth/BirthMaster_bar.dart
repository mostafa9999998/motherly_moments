import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/Chat/chats%20menue/Chats%20menue.dart';
import 'package:motherly_moments/ui/view/Setting/setting%20screen.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/category.dart';
import "package:motherly_moments/ui/view/birth/home/baby's_age.dart";
import 'package:motherly_moments/ui/view/pregnancy/home_screen/todo/todo_screen.dart';
import 'package:provider/provider.dart';

import '../../view_model/provider/main provider.dart';


class BirthMasterscreen extends StatefulWidget {
  const BirthMasterscreen({super.key});
  static const String birthmastername = 'birthmastername';

  @override
  State<BirthMasterscreen> createState() => _BirthMasterscreenState();
}

class _BirthMasterscreenState extends State<BirthMasterscreen> {
  int currentindex=0;

  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width*.22,
        elevation: 0.01,
        backgroundColor: Colors.white,
        leadingWidth:MediaQuery.of(context).size.width*.23,
        title: Text("Welcome Back",
            style:TextStyle(fontWeight: FontWeight.bold ,color: Colors.black)),
        leading: Row(
            mainAxisAlignment: MainAxisAlignment.end ,
            children: [
              SizedBox(width: 15),
              Container(
                height: MediaQuery.of(context).size.width*.18,
                width: MediaQuery.of(context).size.width*.18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),color: Colors.black
                ),
                child: Center(child: Text(provider.babyname,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),)
            ]),
      ),
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
List pages =[BabyAge(),BirthCategory(),Todoscreen(),ChatsMenue(),SettingScreen()];