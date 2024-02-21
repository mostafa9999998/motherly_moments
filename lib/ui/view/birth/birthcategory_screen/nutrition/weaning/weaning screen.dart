import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/weaning/weaning%20month%20model.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/weaning/weaning%20question%20style.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/nutrition/weaning/weektap.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/provider/main provider.dart';

class WeaningScreen extends StatelessWidget {
  const WeaningScreen({super.key});
static String weaningScreenname ='WeaningScreen';
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width * .22,
        elevation: 0.01,
        backgroundColor: Colors.white,
        leadingWidth: MediaQuery.of(context).size.width * .23,
        title: Text("Weaning",
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
                  showtaps(4),
                  showtaps(5),
                  showtaps(6),
                  showtaps(7),
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
                  return WeaningQuestionStyle(weaningResponse:provider.weninglist[index]);
                },
                itemCount: provider.weninglist.length,
              )

              /*FutureBuilder(
                future: provider.getweanng(provider.weaningnum),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return
                  } else if (snapshot.hasError) {
                    return Center(child: Text('some thing went wrong !'));
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),*/
            ),
          ],
        ),
      ),
    );
  }

  showtaps(int i) {
    var list=WeaningMonthmodel.categrylist();
   return WeekTap(weaningMonthmodel:list[i] ,);
  }
}
/* ListView.builder(
                      itemBuilder: (context, index) {
                        return WeaningQuestionStyle(weaningResponse: snapshot.data![index]);
                      },
                      itemCount: snapshot.data!.length,
                    );*/