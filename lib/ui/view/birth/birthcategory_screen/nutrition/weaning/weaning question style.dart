import 'package:flutter/material.dart';
import 'package:motherly_moments/data/repo/moduls/birth/nutrition/WeaningResponse.dart';

class WeaningQuestionStyle extends StatelessWidget {
  WeaningQuestionStyle({super.key, required this.weaningResponse});
  WeaningResponse weaningResponse;
  @override
  Widget build(BuildContext context) {
    return Container(
       margin:  EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height*.03 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(weaningResponse?.title??'Null',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20)),
          SizedBox(height:MediaQuery.of(context).size.width*.03,),
          Text(weaningResponse?.description??'Null',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
        ],
      ),
    );
  }
}