import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/categorylist.dart';

class BirthCategorysyle extends StatelessWidget {
  BirthCategorysyle({super.key, required this.birthCategoryl});
  BirthCategoryl birthCategoryl;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, birthCategoryl.screenname);
      },
      child: Container(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            Image.asset(birthCategoryl.imagepath,
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * .06,
                color:Color(0xff8362D7) ),
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            Text(
              birthCategoryl.title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
