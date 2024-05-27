import 'package:flutter/material.dart';
import 'package:motherly_moments/data/repo/apis/Api%20manager/Api%20manager.dart';
import 'package:motherly_moments/ui/view/Chat/Chat%20contact%20list/friend%20list/friend%20list%20style.dart';
import 'package:motherly_moments/ui/view_model/provider/main%20provider.dart';
import 'package:provider/provider.dart';


class ChatFriendScreen extends StatelessWidget {
  const ChatFriendScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
   Mainprovider mainprovider = Provider.of(context);
    return Container(
      child: FutureBuilder(
          future: Apimanager.getfriends(mainprovider.userid),
          builder: (context, snapshot) {
            if (snapshot.hasError){
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }else if(snapshot.hasData){
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.02),
                    height: MediaQuery.of(context).size.height*.82,
                    // color: Colors.lightBlue,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return FriendStyle(friendsResponse: snapshot.data!.friends![index] ,);
                      },
                      itemCount: snapshot.data!.friends!.length,
                    ),
                  ),
                ],
              );
            }else{
              return Container(
                child:Center(child: CircularProgressIndicator()) ,
              );
            }
          },
        ),
      // ),
    ) ;
  }
}

// Scaffold(
// appBar: AppBar(
// title: Text('Friends',textAlign: TextAlign.center,),
// leading: IconButton(
// onPressed: () => Navigator.pop(context),
// icon:Icon( Icons.arrow_back,size: 40,),
// ),
// ),
// body: