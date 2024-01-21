import 'package:flutter/cupertino.dart';

class Category extends StatelessWidget {
   Category({super.key});
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('“ Wish you have a safe pregnance “'),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 18,
                mainAxisSpacing: 18
              ),
              itemBuilder: (context, index) {
                return ;
              },
            itemCount: ,
          ),
        ],
      ),
    );
  }
}
