import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babygroth%20months%20model.dart';

import '../selected month/selected month screen.dart';

// ignore: must_be_immutable
class Babygrothmonths extends StatelessWidget {
  Babygrothmonths({super.key, required this.babygrothlist});
  Babygrothlist babygrothlist;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Selecctedmonthscreen.month = babygrothlist.id ;
        Selecctedmonthscreen.categ = babygrothlist.screenname ;
        Navigator.pushNamed(context, Selecctedmonthscreen.selectedmonthname);
      },
      child: Container(
        //color: Color(0xff515165),
        height:  MediaQuery.of(context).size.height * 0.14,
        padding: EdgeInsets.symmetric( vertical:MediaQuery.of(context).size.height * 0.009 ,),
        child: Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset(
                  babygrothlist.imagepath,
                  fit: BoxFit.fill,
                )),
            SizedBox(
             // width: MediaQuery.of(context).size.width * 0.015,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  babygrothlist.title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  babygrothlist.desc,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
