import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import '../../../data/repo/moduls/chat/MessageResponse.dart';

class MessageProvider extends ChangeNotifier {
  List<MessageResponse> messagelist = [];
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
 late int outheruserid;
static String c1 ='chatroom';
static String c2 ='messages';
 late Stream<QuerySnapshot<MessageResponse>> msges ;

 void setoutheruserid (int id){
   outheruserid = id;
 }

 int getoutheruserid (){
   return outheruserid;
 }

  Future<void> sendmessage(
      String message, String userid, String receverid,) async {
    final int date = DateTime.now().microsecondsSinceEpoch;
    MessageResponse newMessage = MessageResponse(
      senderId: userid,
      receiverId: receverid,
      message: message,
      createdAt: date,
    );

    List<String> ids = [userid,receverid ];
    ids.sort();
    String chatroomid = ids.join("_");
      print(chatroomid);
    await firestore
        .collection(c1)
        .doc(chatroomid)
        .collection(c2)
        .add(newMessage.toJson());
  }

  Stream<QuerySnapshot<MessageResponse>> getMessage(String userid, String receverid) {
    List<String> ids = [userid,receverid ];
    ids.sort();
    String chatroomid = ids.join("_");
    print(chatroomid);
    return  FirebaseFirestore.instance
        .collection(c1)
        .doc(chatroomid)
        .collection(c2).withConverter(
         fromFirestore: ((snapshot, options)=> MessageResponse.fromJson(snapshot.data()!)),
        toFirestore: ((message, options) => message.toJson()),)
        .orderBy('created_at', descending: true)
        .snapshots();
  }

}
