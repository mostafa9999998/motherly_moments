import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:motherly_moments/data/repo/moduls/chat/DoctorsResponse.dart';
import 'package:motherly_moments/ui/view/Chat/Chat%20screen/Chat%20screen.dart';
import 'package:motherly_moments/ui/view_model/provider/main%20provider.dart';
import 'package:motherly_moments/ui/view_model/provider/message%20provider.dart';
import 'package:provider/provider.dart';


class ContactStyle extends StatelessWidget {
  ContactStyle({super.key, required this.doctorsResponse});
  //Contacts contacts ;
  DoctorsResponse doctorsResponse;
  @override
  Widget build(BuildContext context) {
    Mainprovider messageProvider=Provider.of(context);
    return InkWell(
      onTap: () {
        messageProvider.outheruserid = doctorsResponse.id! ;
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
                  //color: Colors.cyan,
                  image:DecorationImage(image: NetworkImage(doctorsResponse.fullSrc!,),fit: BoxFit.fill)
                ),
                  width: MediaQuery.of(context).size.width * 0.18,
                  height: MediaQuery.of(context).size.width * 0.18,
                  // child: Image.asset(
                  //   contacts.imagepath,
                  //   fit: BoxFit.fill,
                  // )
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  doctorsResponse.name??'',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Text(
                  doctorsResponse.position??'',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                  maxLines: 2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
