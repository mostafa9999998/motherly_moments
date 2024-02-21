import 'package:flutter/material.dart';
import '../../../../../../data/repo/moduls/birth/nutrition/BrestFeedingResponse.dart';

class BreastQuestionStyle extends StatelessWidget {
  BreastQuestionStyle({super.key, required this.brestFeedingResponse});
  BrestFeedingResponse brestFeedingResponse;
  @override
  Widget build(BuildContext context) {
    return Container(
       margin:  EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height*.03 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(brestFeedingResponse?.title??'Null',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20)),
          SizedBox(height:MediaQuery.of(context).size.width*.03,),
          Text(brestFeedingResponse?.description??'Null',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
        ],
      ),
    );
  }
}