import 'package:flutter/material.dart';
import '../../../../../../data/repo/moduls/birth/nutrition/BottleResponse.dart';

class BottleQuestionStyle extends StatelessWidget {
  BottleQuestionStyle({super.key, required this.bottleResponse});
  BottleResponse bottleResponse;
  @override
  Widget build(BuildContext context) {
    return Container(
       margin:  EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height*.03 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(bottleResponse?.title??'Null',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20)),
          SizedBox(height:MediaQuery.of(context).size.width*.03,),
          Text(bottleResponse?.description??'Null',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
        ],
      ),
    );
  }
}