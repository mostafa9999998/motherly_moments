import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Bottle%20feeding/Bottle%20month%20model.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Bottle%20feeding/bottle%20question%20style.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/Bottle%20feeding/bottleweektap.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/provider/main provider.dart';

class BottleScreen extends StatelessWidget {
  const BottleScreen({super.key});
static String BottleScreenname ='BottleScreen';
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width * .22,
        elevation: 0.01,
        backgroundColor: Colors.white,
        leadingWidth: MediaQuery.of(context).size.width * .23,
        title: Text("Bottle Feeding",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        leading: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(width: 15),
          Container(
            height: MediaQuery.of(context).size.width * .18,
            width: MediaQuery.of(context).size.width * .18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(250), color: Colors.black),
            child: Center(
                child: Text(provider.babyname,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
          )
        ]),
      ),
      body: Container(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  showtaps(0),
                  showtaps(1),
                  showtaps(2),
                  showtaps(3),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*.75,
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * .05,
                  top:MediaQuery.of(context).size.height * .03 ,
                  left:MediaQuery.of(context).size.width * .05 ),
              child:
              ListView.builder(
                itemBuilder: (context, index) {
                  return BottleQuestionStyle(bottleResponse: provider.bottlelist[index]);
                },
                itemCount: provider.weninglist.length,
              )
            ),
          ],
        ),
      ),
    );
  }

  showtaps(int i) {
    var list=Bottlefeeding.categrylist();
   return BottleWeekTap(bottlefeeding: list[i] ,);
  }
}
/* ListView.builder(
                      itemBuilder: (context, index) {
                        return WeaningQuestionStyle(weaningResponse: snapshot.data![index]);
                      },
                      itemCount: snapshot.data!.length,
                    );*/