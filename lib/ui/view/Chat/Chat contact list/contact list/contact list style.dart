import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:motherly_moments/ui/view/Chat/Chat%20contact%20list/contact%20list/contacts%20model.dart';


class ContactStyle extends StatelessWidget {
  ContactStyle({super.key, required this.contacts});
  Contacts contacts ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Selecctedmonthscreen.month = babygrothlist.id ;
        // Selecctedmonthscreen.categ = babygrothlist.screenname ;
        // Navigator.pushNamed(context, Selecctedmonthscreen.selectedmonthname);
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
                  image:DecorationImage(image: AssetImage(contacts.imagepath,),fit: BoxFit.fill)
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
                  contacts.title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Text(
                  contacts.desc,
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
