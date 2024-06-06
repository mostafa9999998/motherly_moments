import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:motherly_moments/ui/view_model/provider/main%20provider.dart';
import 'package:provider/provider.dart';
import '../../../../../data/repo/moduls/chat/FriendsResponse.dart';
import '../../Chat screen/Chat screen.dart';


class FriendStyle extends StatelessWidget {
  FriendStyle({super.key, required this.friendsResponse});
  //Contacts contacts ;
  Friends friendsResponse;
  @override
  Widget build(BuildContext context) {
    Mainprovider messageProvider=Provider.of(context);
    return InkWell(
      onTap: () {
        messageProvider.outheruserid = friendsResponse.friendId! ;
        Navigator.pushNamed(context, ChatScreen.ChatScreenname);
      },
      child: Container(
        //color: Color(0xff515165),
        height:  MediaQuery.of(context).size.height * 0.14,
        padding: EdgeInsets.symmetric( vertical:MediaQuery.of(context).size.height * 0.009 ,),
        child: Row(
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  image:DecorationImage(image: NetworkImage(friendsResponse.image??""),fit: BoxFit.fill)
                ),
                  width: MediaQuery.of(context).size.width * 0.18,
                  height: MediaQuery.of(context).size.width * 0.18,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Text(
                  friendsResponse.friendName??'',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
