import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:motherly_moments/data/repo/apis/Api%20manager/Api%20manager.dart';
import 'package:provider/provider.dart';
import '../../../view_model/provider/main provider.dart';
import '../../../view_model/provider/message provider.dart';
import 'messagemodel.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({super.key});
  static String ChatbotScreenname = 'ChatbotScreen';

  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  String m='';
  @override
  Widget build(BuildContext context) {
    TextEditingController messagecontroller = TextEditingController();
    MessageProvider messageProvider = MessageProvider();
    Mainprovider mainprovider = Provider.of(context);
    void sendmessage() async {
      if (messagecontroller.text.isNotEmpty) {
        m = messagecontroller.text;
        messagecontroller.clear();
        await messageProvider.sendmessagetobot(
            m, '${mainprovider.userid}',true);
       var response =await Apimanager.sendtobot(m);

        await messageProvider.sendmessagetobot(
            response.output??'null', '${mainprovider.userid}',false);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Bot Screen'),
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
                child: StreamBuilder<QuerySnapshot<BotMessageResponse>>(
                  stream: messageProvider.getMessagefrombot(
                      '${mainprovider.userid}',),
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
                          return buildmessageitem(messageslist[index],);
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
                    width: MediaQuery.of(context).size.width * .79,
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
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff8461D5)
                      ),
                      child: InkWell(
                        onTap: () {
                          sendmessage();
                        },
                        child: Center(
                          child: Container(
                              height: 25,
                              child: Image.asset('assets/images/sendmessage.png')),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildmessageitem(BotMessageResponse msg,) {
   var date = DateTime.fromMicrosecondsSinceEpoch(msg.createdAt!);

    if (msg.issender! ) {
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
                    color: Color(0xEA3B3153),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                        msg.message??"",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white)
                      //textAlign: TextAlign.center,
                    ),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('  ${date.hour} : ${date.minute}',style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white),),
                      ],
                    )
                  ],
                ),
              ),
            ),
            // CircleAvatar(
            //   child: Text(
            //       'S'
            //   ),
            // ),
          ],
        ),
      );
    }else {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           Container(
             height: MediaQuery.of(context).size.height*.06,
             width: MediaQuery.of(context).size.width*.15,
             child: Image.asset('assets/images/potimg.png'),
           ),
            // CircleAvatar(
            //   child: Text(
            //       'Bot'
            //   ),
            // ),
            Expanded(
              child: Container(
                margin:  EdgeInsets.only(
                    left: 8.0, right:MediaQuery.of(context).size.width * .1, top: 8.0, bottom: 2.0),
                padding: const EdgeInsets.only(
                    left: 5.0, right: 5.0, top: 9.0, bottom: 9.0),
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xFF895FD3),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        msg.message??"",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white)
                      //textAlign: TextAlign.center,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .0005,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('${date.hour} : ${date.minute}  ',style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white),),
                      ],
                    )
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


