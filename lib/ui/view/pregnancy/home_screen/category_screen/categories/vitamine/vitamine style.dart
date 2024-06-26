import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babygroth%20months%20model.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/vitamine/vitamine%20model.dart';

import '../selected month/selected month screen.dart';

class Vitaminestyle extends StatelessWidget {
  Vitaminestyle({super.key, required this.vitaminelist});
  Vitaminelist vitaminelist;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Selecctedmonthscreen.month = vitaminelist.id ;
        Selecctedmonthscreen.categ = vitaminelist.screenname ;
        Navigator.pushNamed(context, Selecctedmonthscreen.selectedmonthname);      },
      child: Container(
        //color: Color(0xff515165),
        height:  MediaQuery.of(context).size.height * 0.14,
        padding: EdgeInsets.symmetric( vertical:MediaQuery.of(context).size.height * 0.01 ,),
        child: Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.23,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset(
                  vitaminelist.imagepath,
                  fit: BoxFit.fill,
                )),
            SizedBox(
               width: MediaQuery.of(context).size.width * 0.03,
            ),
            Center(
              child: Text(
                vitaminelist.title,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            /*Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),*/
                Center(
                  child: Text(
                    vitaminelist.title,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
                /*SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  vitaminelist.desc,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                ),*/
              ],
            )*/
          ],
        ),
      ),
    );
  }
}
