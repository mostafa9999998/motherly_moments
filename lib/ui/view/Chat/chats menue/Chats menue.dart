import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/Chat/Chat%20contact%20list/chat%20contact%20screen.dart';
import 'package:motherly_moments/ui/view/Chat/chat%20bot/chatbotscreen.dart';

class ChatsMenue extends StatelessWidget {
  const ChatsMenue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*.1,),
          Text('Select Chat',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
          SizedBox(height: MediaQuery.of(context).size.height*.03,),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ChatbotScreen.ChatbotScreenname);
            },
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height*.3,
                width: MediaQuery.of(context).size.width*.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 3
                  )
                ),
                child: Center(
                  child: Text('chat Bot',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ChatContactScreen.ChatContactScreenname);
            },
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height*.3,
                width: MediaQuery.of(context).size.width*.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        width: 3
                    )
                ),
                child: Center(
                  child: Text('Doctors',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
