import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/todo/bottomsheet.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/todo/task%20wedget.dart';
import 'package:provider/provider.dart';
import '../../../../view_model/provider/main provider.dart';

class Todoscreen extends StatefulWidget {
  const Todoscreen({super.key});

  @override
  State<Todoscreen> createState() => _TodoscreenState();
}

class _TodoscreenState extends State<Todoscreen> {
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    provider.tasklistS(provider.userid);
    print(provider.userid);
    return Scaffold(
      body: Container(
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
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .05,
                        top: MediaQuery.of(context).size.height * .03,
                        right: MediaQuery.of(context).size.width * .05),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CalendarTimeline(
                          showYears: true,
                          initialDate: provider.selectdate,
                          firstDate:
                              DateTime.now().subtract(Duration(days: 50)),
                          lastDate:
                              DateTime.now().add(const Duration(days: 500)),
                          onDateSelected: (date) {
                            provider.changeselecteddate(date);
                          },
                          leftMargin: 20,
                          monthColor: Colors.black,
                          dayColor: Colors.black,
                          dayNameColor: Colors.white,
                          activeDayColor: Colors.white,
                          activeBackgroundDayColor: Color(0xff8362D7),
                          dotsColor: Colors.white,
                          selectableDayPredicate: (date) => date.day != 23,
                          //locale: 'en',
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return TaskWedget(
                                task: provider.tasklist[index],
                                tasknum: index,
                              );
                            },
                            itemCount: provider.tasklist.length,
                          ),
                        )

                        /* FutureBuilder(
                            future: provider.tasklistS(34),
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
                                          color: Color(0x4d8362d7),
                                        ),
                                        child: Text('This list Would be empty'),
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
                          )*/
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => Showbottomsheet());
          },
          child: Icon(Icons.add),
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(100))),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
