import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/Chat/Chat%20screen/Chat%20screen.dart';

class ChatContactScreen extends StatelessWidget {
  const ChatContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
          child: Center(
            child: ElevatedButton(
                    onPressed: () {
            Navigator.pushNamed(context, ChatScreen.ChatScreenname);
                    },
                  child: Text ('to chat' ),
                ),
          ),
    );
  }
}