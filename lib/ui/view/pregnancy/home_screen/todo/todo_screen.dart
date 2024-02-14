import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/data/repo/apis/baby%20groth/Api%20manager.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/todo/task%20wedget.dart';
import 'package:provider/provider.dart';

import '../../../../view_model/provider/select calender.dart';

class Todoscreen extends StatefulWidget {
  const Todoscreen({super.key});

  @override
  State<Todoscreen> createState() => _TodoscreenState();
}

class _TodoscreenState extends State<Todoscreen> {
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return Container(
    child: Stack(
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .4,
              child: Image.asset('assets/images/todo photo.png',
                  fit: BoxFit.fill),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .23,
            ),
            Text(
              ' Your to do list',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.only(left:MediaQuery.of(context).size.width * .05 ,top:MediaQuery.of(context).size.height * .03 ,right:MediaQuery.of(context).size.width * .05  ),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CalendarTimeline(
                      showYears: true,
                      initialDate: DateTime.now() ,
                      firstDate: DateTime.now().subtract(Duration(days: 50)),
                      lastDate: DateTime.now().add(const Duration(days: 500)),
                      onDateSelected: (date){
                        provider.changeselecteddate(date);
                      },
                      leftMargin: 20,
                      monthColor: Colors.black,
                      dayColor: Colors.black,
                      dayNameColor: Colors.white,
                      activeDayColor: Colors.white,
                      activeBackgroundDayColor: Color(0xff8362D7),
                      dotsColor:  Colors.white,
                      selectableDayPredicate: (date) => date.day != 23,
                      //locale: 'en',
                    ),

                    FutureBuilder(
                          future: Apimanager.gettasks(1),
                          builder:(context, snapshot) {
                            if(snapshot.hasData){
                            return  Expanded(
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return TaskWedget(task: snapshot.data![index],tasknum: index, );
                                },
                                itemCount: snapshot.data!.length,
                              ),
                            );
                            }
                            else if (snapshot.hasError){
                              return Center(
                                child: Column(
                                    children:[ Container(
                                      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.03,
                                          horizontal:MediaQuery.of(context).size.width*.1 ),
                                      padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.03 ,
                                        vertical: MediaQuery.of(context).size.height*.006,),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.yellow,
                                      ),
                                      child: Text('some thing went wrong'),
                                    ),

                                    ]
                                ),
                              );
                            }
                            else {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          },
                        )

                  ],
                ),
              ),
            ),

            /* Expanded(
                child: ListView.builder(
                  itemBuilder:(context, index) {
                    return Babygrothmonths(babygrothlist: babygrothlist[index]);
                  },
                  itemCount:babygrothlist.length ,

                ),
              ),*/


          ],
        )
      ],
    ),
    );
  }
}
