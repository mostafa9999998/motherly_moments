import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:motherly_moments/ui/view_model/provider/main%20provider.dart';
import 'package:provider/provider.dart';

class languageBottomSheet extends StatelessWidget {
  const languageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var providerr = Provider.of<Mainprovider>(context);

    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              providerr.changeLanguage('en');
            },
            child: providerr.appLanguage=='en' ?
            getSelectedItemwidget( AppLocalizations.of(context)!.english,context):
            getunSelectedItemwidget( AppLocalizations.of(context)!.english,context)
          ),
          InkWell(
            onTap: () {
              providerr.changeLanguage('ar');
            },
            child: providerr.appLanguage=='ar' ?
            getSelectedItemwidget( AppLocalizations.of(context)!.arabic,context):
            getunSelectedItemwidget( AppLocalizations.of(context)!.arabic,context)
          )
        ],
      ),
    );
  }

  Widget getSelectedItemwidget(String text, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff8461D5),
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          Icons.check,
          size: 30,
          color: Color(0xff8461D5),
        )
      ],
    );
  }

  Widget getunSelectedItemwidget(String text, BuildContext context) {
    return
      Text(text,
        style: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 20, 18, 22),
          fontWeight: FontWeight.bold,
        ),
      );
  }

}
