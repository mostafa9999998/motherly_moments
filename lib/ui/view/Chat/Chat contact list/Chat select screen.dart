import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/Chat/Chat%20contact%20list/contact%20list/chat%20contact%20screen.dart';
import 'package:motherly_moments/ui/view/Chat/Chat%20contact%20list/friend%20list/friend%20list%20screen.dart';


class ChatSelectScreen extends StatelessWidget {
  const ChatSelectScreen({super.key});
  static String ChatselectScreenname = 'ChatselectScreen';
  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Select',textAlign: TextAlign.center,),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon:Icon( Icons.arrow_back,size: 40,),
          ),
          bottom:TabBar(tabs: [
            Tab(
              child: Text("Doctors",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,),),
            ),
            Tab(
              child: Text("Chats",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,),),
            )
          ]) ,
        ),
        body: TabBarView(
          children: [
            ChatContactScreen(),
            ChatFriendScreen()
          ],
        ),
      ),
    ) ;
  }
}
