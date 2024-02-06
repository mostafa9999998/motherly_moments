import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherly_moments/data/repo/apis/baby%20groth/Api%20manager.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babygroth%20months%20model.dart';
import '../../../../../../../data/repo/moduls/baby groth/BabygrothResponse.dart';


class Selecctedmonthscreen extends StatelessWidget {
  Selecctedmonthscreen({super.key,});
  static late int month;
  static late String categ;

  static String selectedmonthname = 'selectedmonthname';
  var babygrothlist = Babygrothlist.categrylist();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Insights',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            )),
        backgroundColor: Color(0xff8362D7),
      ),
      body: FutureBuilder<BabygrothResponse>(
        future: BabygrothApimanager.getbabygroth(month,categ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          else if (snapshot.hasError) {
            return Column(
              children: [
                Text(snapshot.error.toString()),
                ElevatedButton(onPressed: () {}, child: Text('Try Again'))
              ],
            );
          }
          else{
            return SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * .05,
                    top: MediaQuery.of(context).size.height * .04,
                    left: MediaQuery.of(context).size.width * .05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      snapshot.data?.title??'',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Image.network(snapshot.data?.fullSrc??'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.toppr.com%2Fguides%2Fprinciples-and-practice-of-accounting%2Frectification-of-errors%2Ftypes-of-errors%2F&psig=AOvVaw2v9J3ZzkuS7pVk6cZ6l7uG&ust=1707185818961000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMCbpfSQk4QDFQAAAAAdAAAAABAE',
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height * .28,
                        width: double.infinity),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Text(
                      snapshot.data?.title??'',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Text(
                          snapshot.data?.description??'',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
