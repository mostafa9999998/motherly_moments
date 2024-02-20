import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/issues/issues%20category%20style.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/issues/issues%20model.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/category_screen/categories/babyGroth_screen/babygroth%20months%20model.dart';

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
    return Scaffold(
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
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2
                  ),
                  itemBuilder: (context, index) {
                    return CommonIssuestyle(issues: list[index]);
                  },
                itemCount: list.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}