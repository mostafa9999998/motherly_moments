import 'package:flutter/cupertino.dart';

class ImageStyle extends StatelessWidget {
  ImageStyle({super.key,required this.imgpath});
  String imgpath ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height*.4 ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.02,horizontal: MediaQuery.of(context).size.width*.05),
     child: Image.asset(imgpath,fit: BoxFit.fill),
    );
  }
}
