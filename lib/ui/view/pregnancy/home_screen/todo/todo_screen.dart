import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Todoscreen extends StatelessWidget {
  const Todoscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Stack(
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .4,
              child: Image.asset('assets/images/todo photo.png',
                  fit: BoxFit.fill),
            ),
          ],
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .28,
              ),
              Text(
                ' Your to do list',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),

              Container(
                padding: EdgeInsets.only(left:MediaQuery.of(context).size.width * .05 ,top:MediaQuery.of(context).size.height * .03 ,right:MediaQuery.of(context).size.width * .05  ),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    



                  ],
                ),
              ),

              /* Expanded(
                  child: ListView.builder(
                    itemBuilder:(context, index) {
                      return Babygrothmonths(babygrothlist: babygrothlist[index]);
                    },
                    itemCount:babygrothlist.length ,

                  ),
                ),*/


            ],
          ),
        )
      ],
    ),
    );
  }
}
