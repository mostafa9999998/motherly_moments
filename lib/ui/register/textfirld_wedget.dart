import 'package:flutter/material.dart';

class Textform extends StatelessWidget {
  late  String title ;
  late  String hint ;
   Textform({super.key, required this.title,required this.hint});

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
            ),
          ),
        ),
        SizedBox(height: 14,)
      ],
    );
  }
}
