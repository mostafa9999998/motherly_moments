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
    MessageProvider messageProvider = MessageProvider();
    Mainprovider mainprovider = Provider.of(context);
    void sendmessage() async {
      if (messagecontroller.text.isNotEmpty) {
        await messageProvider.sendmessage(
            messagecontroller.text, '${mainprovider.userid}', '${mainprovider.outheruserid}');
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
                height: MediaQuery.of(context).size.height * .79,
                //color: Colors.orange,
                child: StreamBuilder<QuerySnapshot<MessageResponse>>(
                  stream: messageProvider.getMessage(
                      '${mainprovider.userid}', '${mainprovider.outheruserid}'),
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
                          return buildmessageitem(messageslist[index],'${mainprovider.userid}', context);
                        },
                        reverse: true,
                      );
                    }
                  },
                )),
            Container(
              height: MediaQuery.of(context).size.height * .09,
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .03,
                vertical: MediaQuery.of(context).size.height * .01
              ),
             // height: MediaQuery.of(context).size.height * .1,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextFormField(
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


  Widget buildmessageitem(MessageResponse msg, String userid,BuildContext context) {
    var date = DateTime.fromMicrosecondsSinceEpoch(msg.createdAt!);
     if (msg.senderId == userid ) {
       return Container(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Expanded(
               child: Container(
                 margin:  EdgeInsets.only(
                     left: MediaQuery.of(context).size.width * .2, right: 5.0, top: 8.0, bottom: 4.0),
                 padding: const EdgeInsets.only(
                     left: 5.0, right: 5.0, top: 9.0, bottom: 9.0),
                 decoration: const BoxDecoration(
                     shape: BoxShape.rectangle,
                     color: Color(0xFF7CE994),
                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     Text(
                         msg.message??"",style: TextStyle(fontWeight: FontWeight.w800,)
                       //textAlign: TextAlign.center,
                     ),
                     Text('${date.hour} : ${date.minute}                                                    ',style: TextStyle(fontWeight: FontWeight.w700,color: Color(
    0xec4d4b4b)),)
                   ],
                 ),
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
         child: Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             CircleAvatar(
               child: Text(
                   'R'
               ),
             ),
             Expanded(
               child: Container(
                 margin:  EdgeInsets.only(
                     left: 8.0, right:MediaQuery.of(context).size.width * .2, top: 8.0, bottom: 2.0),
                 padding: const EdgeInsets.only(
                     left: 5.0, right: 5.0, top: 9.0, bottom: 9.0),
                 decoration: const BoxDecoration(
                     shape: BoxShape.rectangle,
                     color: Color(0xFFE17364),
                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10))),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       msg.message??"",style: TextStyle(fontWeight: FontWeight.w800,)
                       //textAlign: TextAlign.center,
                     ),
                     SizedBox(height: MediaQuery.of(context).size.height * .0005,),
                     Text('                                                ${date.hour} : ${date.minute}',style: TextStyle(fontWeight: FontWeight.w700,color: Color(
                         0xec4d4b4b)),)
                   ],
                 ),
               ),
             ),

           ],
         ),
       );
  }
}
}
