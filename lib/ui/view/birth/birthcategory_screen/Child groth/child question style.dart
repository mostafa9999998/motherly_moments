import 'package:flutter/material.dart';
import '../../../../../data/repo/moduls/birth/ChildGrothResponse.dart';

class ChildQuestionStyle extends StatelessWidget {
  ChildQuestionStyle({super.key, required this.childGrothResponse});
  ChildGrothResponse childGrothResponse;
  @override
  Widget build(BuildContext context) {
    return Container(
       margin:  EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height*.03 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(childGrothResponse?.title??'Null',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20)),
          SizedBox(height:MediaQuery.of(context).size.width*.03,),
          Text(childGrothResponse?.description??'Null',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
        ],
      ),
    );
  }
}