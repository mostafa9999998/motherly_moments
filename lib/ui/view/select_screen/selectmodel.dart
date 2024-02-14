import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Selectitem extends StatelessWidget {
  Selectitem(
      {super.key,
      required this.id,
      required this.title,
      required this.imagepath,
      required this.screenname});
  String id;
  String title;
  String imagepath;
  String screenname;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context,screenname);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .025),
        padding:EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .01,vertical: MediaQuery.of(context).size.height * .05 ) ,
        height: MediaQuery.of(context).size.height * .38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff8362D7),
        ),
        child: Column(
          children: [
            Image.asset(imagepath,fit: BoxFit.cover),
            SizedBox(height: MediaQuery.of(context).size.height * .035 ,),
            Text(title,style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.w600,fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
