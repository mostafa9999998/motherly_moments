import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../data/repo/apis/Api manager/Api manager.dart';
import '../../../../view_model/provider/main provider.dart';

class Weekscalculate extends StatelessWidget {
   Weekscalculate({super.key});

  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
   var date = provider.getdate();
    return FutureBuilder(
        future: Apimanager.Weeks(date.day, date.month, date.year),
        builder: (context, snapshot) {
          if (snapshot.hasData){
            return Container(
              child: Column(
                children: [
                  CalendarAppBar(
                    onDateChanged: (value) => print(value),
                    firstDate: DateTime.now().subtract(Duration(days: 140)),
                    lastDate: DateTime.now(),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2000),
                          color: Color(0xfff6f4f4)
                      ),
                      margin:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.1,vertical:MediaQuery.of(context).size.height * 0.1 ),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.35,
                      padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.01,vertical:MediaQuery.of(context).size.height * 0.02 ),
                      child: Center(
                        child: Column(
                          children: [
                            Text('Week ${snapshot.data!.weeks}',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),

                            Text('Day${snapshot.data!.days}',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            Container(
                              //padding: EdgeInsets.,
                              child: Image.asset('assets/images/Mask Group.png',width:MediaQuery.of(context).size.width * 0.35 ),),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            Text('Today',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Color(0xff8362D7)),),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),

            );
          }else if (snapshot.hasError){
            return Container(
              child: Column(
                children: [
                  CalendarAppBar(
                    onDateChanged: (value) => print(value),
                    firstDate: DateTime.now().subtract(Duration(days: 140)),
                    lastDate: DateTime.now(),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2000),
                          color: Color(0xfff6f4f4)
                      ),
                      margin:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.1,vertical:MediaQuery.of(context).size.height * 0.1 ),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.35,
                      padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.01,vertical:MediaQuery.of(context).size.height * 0.02 ),
                      child: Center(
                        child: Column(
                          children: [
                            Text('Week 0',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),

                            Text('Day 0',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            Container(
                              //padding: EdgeInsets.,
                              child: Image.asset('assets/images/Mask Group.png',width:MediaQuery.of(context).size.width * 0.35 ),),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            Text('Today',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Color(0xff8362D7)),),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),

            );
          }else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

        },
    );
  }
}
/* Container(
      child: Column(
        children: [
          CalendarAppBar(
            onDateChanged: (value) => print(value),
            firstDate: DateTime.now().subtract(Duration(days: 140)),
            lastDate: DateTime.now(),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2000),
                color: Color(0xfff6f4f4)
              ),
              margin:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.1,vertical:MediaQuery.of(context).size.height * 0.1 ),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.35,
              padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.01,vertical:MediaQuery.of(context).size.height * 0.02 ),
              child: Center(
                child: Column(
                  children: [
                    Text('Week 22',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),

                    Text('Day 6',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Container(
                      //padding: EdgeInsets.,
                      child: Image.asset('assets/images/Mask Group.png',width:MediaQuery.of(context).size.width * 0.35 ),),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Text('Today',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Color(0xff8362D7)),),
                  ],
                ),
              ),
            ),
          )
        ],
      ),

    )*/