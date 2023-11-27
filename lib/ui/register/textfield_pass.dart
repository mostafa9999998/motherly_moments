import 'package:flutter/material.dart';

class Textformpass extends StatelessWidget {
   Textformpass({super.key, required this.title,required this.hint,required this.iconpath});
  late  String title ;
  late  String hint ;
   late  String iconpath ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
        Container(
          height: 48,
          child: TextFormField(
            decoration: InputDecoration(
              errorBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              enabledBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: hint ,
              suffixIcon: ImageIcon(AssetImage(iconpath)),
            ),
          ),
        ),
        SizedBox(height: 14,)
      ],
    );;
  }
}
