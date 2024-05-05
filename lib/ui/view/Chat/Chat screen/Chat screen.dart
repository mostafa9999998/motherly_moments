import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view_model/provider/main%20provider.dart';
import 'package:provider/provider.dart';
import '../../../../data/repo/moduls/chat/MessageResponse.dart';
import '../../../view_model/provider/message provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  static String ChatScreenname = 'ChatScreen';
  @override
  Widget build(BuildContext context) {
    TextEditingController messagecontroller = TextEditingController();
    MessageProvider messageProvider = Provider.of(context);
    Mainprovider mainprovider = Provider.of(context);
    void sendmessage() async {
      if (messagecontroller.text.isNotEmpty) {
        await messageProvider.sendmessage(
            messagecontroller.text, '${mainprovider.userid}', '${messageProvider.outheruserid}');
        messagecontroller.clear();
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon:Icon( Icons.arrow_back,size: 40,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * .75,
                //color: Colors.orange,
                child: StreamBuilder<QuerySnapshot<MessageResponse>>(
                  stream: messageProvider.getMessage(
                      '${mainprovider.userid}', '${messageProvider.outheruserid}'),
                  builder: (context, asynSnapShot) {
                    if (asynSnapShot.hasError) {
                      return Center(child: Text(asynSnapShot.error.toString()));
                    } else if (asynSnapShot.connectionState ==
                        ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      print (asynSnapShot.toString());
                      var messageslist = asynSnapShot.data?.docs.map((e) => e.data()).toList()??[];
                      print(messageslist);
                      return ListView.builder(
                        //physics: const BouncingScrollPhysics(),
                        itemCount: messageslist.length, //messageList.length,
                        itemBuilder: (context, index) {
                          return buildmessageitem(messageslist[index],'${mainprovider.userid}');
                        },
                        reverse: true,
                      );
                    }
                  },
                )),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .03,
                vertical: MediaQuery.of(context).size.height * .03
              ),
             // height: MediaQuery.of(context).size.height * .1,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty || value.trim().isEmpty) {
                          return "e-mail can't be empty";
                        }
                      },
                      controller: messagecontroller,
                      decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Message',
                      ),
                    ),
                  ),
                  //SizedBox(width: 5,),
                  IconButton(
                    onPressed: () {
                      sendmessage();
                    },
                    icon: Icon(Icons.send,color: Colors.blue,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget buildmessageitem(MessageResponse msg, String userid) {

     if (msg.senderId == userid ) {
        return Container(
          //width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 8.0, right: 5.0, top: 8.0, bottom: 2.0),
                padding: const EdgeInsets.only(
                    left: 5.0, right: 5.0, top: 9.0, bottom: 9.0),
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xFF7CE994),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Text(
                  msg.message!,
                  textAlign: TextAlign.center,
                ),
              ),
              CircleAvatar(
                child: Text(
                    'S'
                ),
              ),
            ],
          ),
        );
      }else {
       return Container(
         //width: 100,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             CircleAvatar(
               child: Text(
                   'R'
               ),
             ),
             Container(
               margin: const EdgeInsets.only(
                   left: 8.0, right: 5.0, top: 8.0, bottom: 2.0),
               padding: const EdgeInsets.only(
                   left: 5.0, right: 5.0, top: 9.0, bottom: 9.0),
               decoration: const BoxDecoration(
                   shape: BoxShape.rectangle,
                   color: Color(0xFF7CE994),
                   borderRadius: BorderRadius.all(Radius.circular(10.0))),
               child: Text(
                 msg.message!,
                 textAlign: TextAlign.center,
               ),
             ),

           ],
         ),
       );
  }
}
}
