import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/courses/courses%20model.dart';
import 'package:provider/provider.dart';

import '../../../../../../view_model/provider/main provider.dart';
import '../selected month/select month (video).dart';

class Coursesstyle extends StatelessWidget {
  Coursesstyle({super.key, required this.courseslist});
  Courseslist courseslist;
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return InkWell(
      onTap: () {
        provider.setmonth(courseslist.id);
        provider.setcateg(courseslist.screenname);
        Navigator.pushNamed(context, SelectmonthscreenV.selectedmonthvname);
      },
      child: Container(
        //color: Color(0xff515165),
        height: MediaQuery.of(context).size.height * 0.14,
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.009,
        ),
        child: Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset(
                  courseslist.imagepath,
                  fit: BoxFit.fill,
                )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.015,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  courseslist.title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  courseslist.desc,
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
