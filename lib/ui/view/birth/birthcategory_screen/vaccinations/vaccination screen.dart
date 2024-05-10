import 'package:flutter/material.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/vaccinations/imagestyle.dart';
import 'package:provider/provider.dart';

import '../../../../view_model/provider/main provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class VaccinationScreen extends StatelessWidget {
  const VaccinationScreen({super.key});
static String VaccinationScreenname ='VaccinationScreen';
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width * .22,
        elevation: 0.01,
        backgroundColor: Colors.white,
        leadingWidth: MediaQuery.of(context).size.width * .23,
        title: Text(AppLocalizations.of(context)!.vaccinations,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        leading: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(width: 15),
          Container(
            height: MediaQuery.of(context).size.width * .18,
            width: MediaQuery.of(context).size.width * .18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(250), color: Colors.black),
            child: Center(
                child: Text(provider.babyname,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
          )
        ]),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ImageStyle(imgpath: 'assets/images/vaccination1.webp'),
              ImageStyle(imgpath: 'assets/images/vaccination2.webp'),
              ImageStyle(imgpath: 'assets/images/vaccination3.webp'),
              ImageStyle(imgpath: 'assets/images/vaccination4.webp'),
              ImageStyle(imgpath: 'assets/images/vaccination4.webp'),
              ImageStyle(imgpath: 'assets/images/vaccination6.webp'),
            ],
          ),
        ),
      ),
    );
  }
}
