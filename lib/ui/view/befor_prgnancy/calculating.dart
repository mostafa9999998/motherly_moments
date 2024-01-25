import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/befor_prgnancy/baby_weeks.dart';

class Calculatingscreen extends StatelessWidget {
  const Calculatingscreen({super.key});
  static const String calculatetname = 'calculatenam';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .05,
            vertical: MediaQuery.of(context).size.height * .07),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * .02,
                    horizontal: MediaQuery.of(context).size.width * .025),
                child: Stack(
                  children: [
                    Image.asset('assets/images/calender.png'),
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .13,
                        ),
                        Center(
                            child: Image.asset(
                          'assets/images/search 1.png',
                          width: MediaQuery.of(context).size.width * .45,
                          fit: BoxFit.fill,
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Text('Calculating...',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
                '   82% of women say flo helped them be more educated about their pregnancies',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                textAlign: TextAlign.center),
            Spacer(),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.9,
              height: MediaQuery.sizeOf(context).width * 0.15,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Babyweeksscreen.babyweeksname);
                },
                child: Text(
                  'Next',
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
