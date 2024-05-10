import 'package:flutter/material.dart';
import 'package:motherly_moments/data/repo/apis/Api%20manager/Api%20manager.dart';
import 'package:motherly_moments/ui/view/Chat/Chat%20contact%20list/contact%20list/contact%20list%20style.dart';


class ChatContactScreen extends StatelessWidget {
  const ChatContactScreen({super.key});
static String ChatContactScreenname = 'ChatContactScreen';
  @override
  Widget build(BuildContext context) {
     //List<Contacts> contacts = Contacts.categrylist();

    return Scaffold(
      appBar: AppBar(
        title: Text('Doctors',textAlign: TextAlign.center,),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon:Icon( Icons.arrow_back,size: 40,),
        ),
      ),
      body: FutureBuilder(
          future: Apimanager.getdoctors(),
          builder: (context, snapshot) {
            if (snapshot.hasError){
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }else if(snapshot.hasData){
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
                        return ContactStyle(doctorsResponse: snapshot.data![index] ,);
                      },
                      itemCount: snapshot.data!.length,
                    ),
                  ),
                  // Container(
                  //   color: Colors.lightBlue,
                  //   child: Center(
                  //     child: ElevatedButton(
                  //       onPressed: () {
                  //         Navigator.pushNamed(context, ChatScreen.ChatScreenname);
                  //       },
                  //       child: Text ('to chat' ),
                  //     ),
                  //   ),
                  // ),
                ],
              );
            }else{
             return Container(
               child:Center(child: CircularProgressIndicator()) ,
             );
            }
          },
      ),
    ) ;
  }
}

