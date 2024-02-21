import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/categorylist.dart';
import 'package:provider/provider.dart';

import '../../../view_model/provider/main provider.dart';

class BirthCategorysyle extends StatelessWidget {
  BirthCategorysyle({super.key, required this.birthCategoryl});
  BirthCategoryl birthCategoryl;
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return InkWell(
      onTap: () async{
        Navigator.pushNamed(context, birthCategoryl.screenname);
        if (birthCategoryl.id ==1){
          await provider.getchildgroth(1);
          provider.notifyListeners();
        }else if (birthCategoryl.id ==2){
          await provider.gettips(1);
          provider.notifyListeners();
        }
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
