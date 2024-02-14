import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/exercise/exercise%20model.dart';
import 'package:motherly_moments/ui/view_model/provider/select%20calender.dart';
import 'package:provider/provider.dart';

import '../selected month/select month (video).dart';

class Exercisesstyle extends StatelessWidget {
  Exercisesstyle({super.key, required this.exerciseslist});
  Exerciseslist exerciseslist;
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return InkWell(
      onTap: () {
        provider.setmonth(exerciseslist.id)  ;
        provider.setcateg(exerciseslist.screenname)  ;
        Navigator.pushNamed(context, SelectmonthscreenV.selectedmonthvname);
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
                  exerciseslist.imagepath,
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
                  exerciseslist.title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  exerciseslist.desc,
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
