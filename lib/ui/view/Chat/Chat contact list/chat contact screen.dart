import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/Chat/Chat%20contact%20list/contact%20list/contact%20list%20style.dart';
import 'package:motherly_moments/ui/view/Chat/Chat%20contact%20list/contact%20list/contacts%20model.dart';
import 'package:motherly_moments/ui/view/Chat/Chat%20screen/Chat%20screen.dart';

class ChatContactScreen extends StatelessWidget {
  const ChatContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
     List<Contacts> contacts = Contacts.categrylist();
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*.0,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.02),
          height: MediaQuery.of(context).size.height*.86,
         // color: Colors.lightBlue,
          child: ListView.builder(
              itemBuilder: (context, index) {
               return ContactStyle(contacts: contacts[index],);
              },
            itemCount: contacts.length,
          ),
        ),
        Container(
          color: Colors.lightBlue,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ChatScreen.ChatScreenname);
              },
              child: Text ('to chat' ),
            ),
          ),
        ),

      ],
    );
  }
}