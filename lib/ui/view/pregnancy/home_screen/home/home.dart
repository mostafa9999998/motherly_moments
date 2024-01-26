import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/cupertino.dart';

class Weekscalculate extends StatelessWidget {
  const Weekscalculate({super.key});

  @override
  Widget build(BuildContext context) {
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

    );
  }
}
