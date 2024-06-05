import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/data/repo/apis/Api%20manager/Api%20manager.dart';
import 'package:motherly_moments/ui/view_model/provider/main%20provider.dart';
import 'package:provider/provider.dart';

class CryAnalyzerResult extends StatelessWidget {
  const CryAnalyzerResult({super.key});
  static const String CryAnalyzerResultname = 'CryAnalyzerResult';
 //File file;

  @override
  Widget build(BuildContext context) {
    Mainprovider mainprovider=Provider.of(context);
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
                  height: MediaQuery.of(context).size.height * .15
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
              Container(
                // color: Color(0xff8461D5),
                height: MediaQuery.of(context).size.height * .2,
                //width: MediaQuery.of(context).size.width * .7,
                //margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .1),
                child:FutureBuilder(
                  future: Apimanager.sendcry(mainprovider.file),
                  builder: (context, snapshot) {
                    if(snapshot.hasData){
                      print(snapshot.data!.predictedClasses??"null");
                      return  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(snapshot.data!.predictedClasses??'null',style: TextStyle(color:Color(0xff8461D5) ,fontWeight:FontWeight.w600 ,fontSize: 28),)
                        ],
                      );
                    }else if (snapshot.hasError){
                      return   Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Some thing went wrong !',style: TextStyle(color:Color(0xff8461D5) ,fontWeight:FontWeight.w600 ,fontSize: 26),)
                        ],
                      );
                    } else {
                      return  Center(child: CircularProgressIndicator());
                    }
                  },
                )
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * .05
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * .2 ),
                width: MediaQuery.sizeOf(context).width*0.9,
                height:MediaQuery.sizeOf(context).width*0.15 ,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, CryAnalyzerResult.CryAnalyzerResultname);
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
