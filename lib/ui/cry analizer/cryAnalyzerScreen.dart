import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/cry%20analizer/result.dart';
import 'package:motherly_moments/ui/view_model/provider/main%20provider.dart';
import 'package:provider/provider.dart';

class CryAnalyzerScreen extends StatelessWidget {
  const CryAnalyzerScreen({super.key});
 static const String CryAnalyzerScreennzme = 'CryAnalyzerScreen';
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
                height: MediaQuery.of(context).size.height * .07
            ),
            Text("   Don't worry\nYour baby will be fine",style: TextStyle(color:Color(0xff8461D5) ,fontWeight:FontWeight.w700 ,fontSize: 22),),
            SizedBox(
                height: MediaQuery.of(context).size.height * .07
            ),
            Container(
              height: MediaQuery.of(context).size.height * .1,
              child: Center(
                child: Image.asset('assets/images/babyrecord.png'),
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * .14
            ),
            InkWell(
              onTap: () async{
                mainprovider.file = await pickaudeofile();
                  Navigator.pushNamed(context,CryAnalyzerResult.CryAnalyzerResultname );
              },
              child: Container(
                height:MediaQuery.of(context).size.height* 0.12,
                width:MediaQuery.of(context).size.height* 0.12 ,
                decoration: BoxDecoration(
                    color: Color(0xff8461D5),
                    borderRadius: BorderRadius.circular(55),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          spreadRadius: 9,
                          blurRadius: 7,
                          //offset: Offset(1.0,4.0)
                      )
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * .05,
                        child: Image.asset('assets/images/micrecord.png')),
                  ],
                ),
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * .02
            ),
            Text('tap to select record',style: TextStyle(color:Color(0xff8461D5) ,fontWeight:FontWeight.w600 ,fontSize: 18),)
          ],
        ),
      ),
    );
  }

  Future<File> pickaudeofile()async {
    // FilePickerResult? result = await FilePicker.platform.pickFiles();
    // if (result != null) {
    //   File file = File(result.files.single.path!);
    //   return file;
    // } else {
    //   return null;
    //   // User canceled the picker
    // }
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    File file = File(result!.files.single.path!);
       return file;
  }
}
