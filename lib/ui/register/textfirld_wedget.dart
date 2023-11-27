import 'package:flutter/material.dart';

class Textform extends StatelessWidget {
  late  String title ;
  late  String hint ;
  late  String valiedstring ;
   Textform({super.key, required this.title,required this.hint,required this.valiedstring});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
        Container(
          height: 48,
          child: TextFormField(
            validator: (value) {
              if (value! .isEmpty ){
                return valiedstring;
              }
            },
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
