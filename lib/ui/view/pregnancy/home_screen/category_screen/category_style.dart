import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categorylist.dart';

class Categorysyle extends StatelessWidget {
  Categorysyle({super.key, required this.categoryl});
  Categoryl categoryl;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, categoryl.screenname);
      },
      child: Container(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            Image.asset(categoryl.imagepath,
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * .06),
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            Text(
              categoryl.title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
