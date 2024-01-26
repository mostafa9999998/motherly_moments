import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/pregnancy/home_screen/master_bar.dart';

class Babyweeksscreen extends StatelessWidget {
  const Babyweeksscreen({super.key});
  static const String babyweeksname = 'babyweeksname';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .05,
            vertical: MediaQuery.of(context).size.height * .05),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .18,
                    vertical: MediaQuery.of(context).size.height * .06),
                child:
                    Center(child: Image.asset('assets/images/Mask Group.png'))),
            Text('Your baby at 4 weeks',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Text('Your baby is now the size of poppy seed- look at them grow!',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                textAlign: TextAlign.center),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Text(
                'We’ll help you track their growth and update you on your baby’s weekly milestones',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center),
            Spacer(),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.9,
              height: MediaQuery.sizeOf(context).width * 0.15,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Masterscreen.mastername);
                },
                child: Text(
                  'See my baby milestones',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff8461D5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
