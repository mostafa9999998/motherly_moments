import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/bodychange/bodychange%20model.dart';

import '../selected month/selected month screen.dart';


class Bodychangemonths extends StatelessWidget {
  Bodychangemonths({super.key, required this.bodychangehlist});
  Bodychangehlist bodychangehlist;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Selecctedmonthscreen.month = bodychangehlist.id ;
        Selecctedmonthscreen.categ = bodychangehlist.screenname ;
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
                  bodychangehlist.imagepath,
                  fit: BoxFit.fill,
                )),
            SizedBox(
              // width: MediaQuery.of(context).size.width * 0.015,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  bodychangehlist.title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  bodychangehlist.desc,
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
