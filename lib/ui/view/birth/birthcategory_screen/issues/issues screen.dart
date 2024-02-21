import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/issues/issues%20category%20style.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/issues/issues%20model.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babygroth%20months%20model.dart';
import 'package:provider/provider.dart';
import '../../../../../data/repo/apis/Api manager/Api manager.dart';
import '../../../../view_model/provider/main provider.dart';

class CommonIssuesScreen extends StatefulWidget {
  CommonIssuesScreen({super.key});
  static String issuesname = 'issuesn';

  @override
  State<CommonIssuesScreen> createState() => _CommonIssuesScreenState();
}

class _CommonIssuesScreenState extends State<CommonIssuesScreen> {
  var babygrothlist = Babygrothlist.categrylist();
 var list =  CommonIssues.categrylist();
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width * .22,
        elevation: 0.01,
        backgroundColor: Colors.white,
        leadingWidth: MediaQuery.of(context).size.width * .23,
        title: Text('Common Issues',
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
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
            ),
            Text(
              'Take a look on these issues',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Expanded(
              child: FutureBuilder(
                  future: Apimanager.getissuesname(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData){
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2
                    ),
                    itemBuilder: (context, index) {
                      return CommonIssuestyle(issusesNameResponse: snapshot.data![index]);
                    },
                    itemCount: snapshot.data!.length,
                  );
                    }else if(snapshot.hasError){
                      return Text('some thing went wrong');
                    }else {
                     return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
              ),
            )
          ],
        ),
      ),
    );
  }
}