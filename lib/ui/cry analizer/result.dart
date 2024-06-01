import 'package:flutter/material.dart';

class CryAnalyzerResult extends StatelessWidget {
  const CryAnalyzerResult({super.key});
  static const String CryAnalyzerResultname = 'CryAnalyzerResult';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * .08
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width *.08
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height:MediaQuery.of(context).size.height* 0.05,
                    width:MediaQuery.of(context).size.height* 0.05 ,
                    decoration: BoxDecoration(
                        color: Color(0xff8461D5),
                        borderRadius: BorderRadius.circular(55),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(5.0,8.0)
                          )
                        ]
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width *.18
                ),
                Text('cry analyzer',style: TextStyle(color:Color(0xff8461D5) ,fontWeight:FontWeight.w600 ,fontSize: 18),)
              ],),
            SizedBox(
                height: MediaQuery.of(context).size.height * .11
            ),
            Text("Result",style: TextStyle(color:Color(0xff8461D5) ,fontWeight:FontWeight.w600 ,fontSize: 26),),
            SizedBox(
                height: MediaQuery.of(context).size.height * .02
            ),
            Container(
               color: Color(0xff8461D5),
              height: MediaQuery.of(context).size.height * .005,
              width: MediaQuery.of(context).size.width * .7,
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .1),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * .3
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * .2 ),
              width: MediaQuery.sizeOf(context).width*0.9,
              height:MediaQuery.sizeOf(context).width*0.15 ,
              child: ElevatedButton(onPressed: (){
              },
                child: Text('Retry',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    backgroundColor:Color(0xff8461D5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
          ],
        ),
      )
    );
  }
}
