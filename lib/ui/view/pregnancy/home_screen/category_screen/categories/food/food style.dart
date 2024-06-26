import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/food/food%20moel.dart';

import '../selected month/selected month screen.dart';

class Foodsstyle extends StatelessWidget {
  Foodsstyle({super.key, required this.foodlist});
  Foodlist foodlist;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Selecctedmonthscreen.month = foodlist.id ;
        Selecctedmonthscreen.categ = foodlist.screenname ;
        Navigator.pushNamed(context, Selecctedmonthscreen.selectedmonthname);
      },
      child: Container(
        //color: Color(0xff515165),
        height:  MediaQuery.of(context).size.height * 0.14,
        padding: EdgeInsets.symmetric( vertical:MediaQuery.of(context).size.height * 0.009 ,),
        child: Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.22,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Image.asset(
                  foodlist.imagepath,
                  fit: BoxFit.fill,
                )),
            SizedBox(
              // width: MediaQuery.of(context).size.width * 0.015,
            ),
            Expanded(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Text(
                        foodlist.title,
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        foodlist.desc,
                        style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
