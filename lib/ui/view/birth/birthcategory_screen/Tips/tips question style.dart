import 'package:flutter/material.dart';
import '../../../../../data/repo/moduls/birth/TipsResponse.dart';

class TipsQuestionStyle extends StatelessWidget {
  TipsQuestionStyle({super.key, required this.tipsResponse});
  TipsResponse tipsResponse;
  @override
  Widget build(BuildContext context) {
    return Container(
       margin:  EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height*.03 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tipsResponse?.title??'Null',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20)),
          SizedBox(height:MediaQuery.of(context).size.width*.03,),
          Text(tipsResponse?.description??'Null',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
        ],
      ),
    );
  }
}