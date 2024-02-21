import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/Child%20groth/child%20month%20model.dart';
import 'package:motherly_moments/ui/view_model/provider/main%20provider.dart';
import 'package:provider/provider.dart';

class ChildWeekTap extends StatelessWidget {
  ChildWeekTap({super.key, required this.childgrothMonthmodel});
  ChildgrothMonthmodel childgrothMonthmodel;
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return InkWell(
      onTap: () async{
        await provider.getchildgroth(childgrothMonthmodel.id);
        provider.notifyListeners();
      },
      child: Container(
        height: MediaQuery.of(context).size.height * .06,
        width: MediaQuery.of(context).size.height * .2,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xa68362d7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            childgrothMonthmodel.weekname,
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
