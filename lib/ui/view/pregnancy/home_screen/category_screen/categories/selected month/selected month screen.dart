import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../data/repo/apis/Api manager/Api manager.dart';
import ''
    '../../../../../../../data/repo/moduls/baby groth/categoriesResponse.dart';


class Selecctedmonthscreen extends StatelessWidget {
  Selecctedmonthscreen({super.key,});
  static  int month =1;
  static  String categ = 'babygrowth';

  static String selectedmonthname = 'selectedmonthname';

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
        future: Apimanager.getcategorydesc(month,categ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          else if (snapshot.hasError) {
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
                  child: Text(snapshot.error.toString()),
                ),
                  ElevatedButton(onPressed: () {}, child: Text('Try Again'))
                ]
              ),
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
                      snapshot.data?.title??'null',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Image.network(snapshot.data?.fullSrc??'https://static.s4be.cochrane.org/app/uploads/2017/04/shutterstock_531145954.jpg',
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height * .28,
                        width: double.infinity),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Text(
                      snapshot.data?.title??'null',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Text(
                          snapshot.data?.description??'null',
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
