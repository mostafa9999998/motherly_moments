import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/befor_prgnancy/calculating.dart';
import 'package:motherly_moments/ui/view/befor_prgnancy/date_biker/date%20piker%20screen.dart';
import 'package:motherly_moments/ui/view/select_screen/selectmodel.dart';
import '../pregnancy/home_screen/master_bar.dart';

class Selectscreen extends StatelessWidget {
  const Selectscreen({super.key});
  static const String selectname = 'selectname';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: ()async {
          return false ;
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical:  MediaQuery.of(context).size.height*.17,horizontal:  MediaQuery.of(context).size.width*.05),
          child: Column(
            children: [
              Text('Select',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
              SizedBox(height:  MediaQuery.of(context).size.height*.17,),
              Row(
                children: [
                  Expanded(child: Selectitem(id: 'bregnancy', title: 'Bregnancy', imagepath: 'assets/images/pregnant.png', screenname: Datebikerscreen.datepikername)),
                  Expanded(child: Selectitem(id: 'birth', title: 'Birth', imagepath: 'assets/images/mother.png', screenname: Masterscreen.mastername)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
