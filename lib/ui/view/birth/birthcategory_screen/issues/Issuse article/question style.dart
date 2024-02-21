import 'package:flutter/cupertino.dart';
import 'package:motherly_moments/data/repo/moduls/birth/IssuesResponse.dart';

class QuestionStyle extends StatelessWidget {
   QuestionStyle({super.key, required this.issuesResponse});
   IssuesResponse issuesResponse;
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(issuesResponse?.title??'Null',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20)),
          SizedBox(height:MediaQuery.of(context).size.width*.05,),
          Text(issuesResponse?.description??'Null',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
        ],
      ),
    );
  }
}
