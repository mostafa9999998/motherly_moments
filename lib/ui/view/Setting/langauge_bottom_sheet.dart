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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
              providerr.changeLanguage('en');
            },
                child: Text(
                  AppLocalizations.of(context)!.english,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff8461D5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                Icons.check,
                size: 30,
                color: Color(0xff8461D5),
              )
            ],
          ),
          InkWell(
            onTap: () {
              providerr.changeLanguage('ar');
            },
            child: Text(
              AppLocalizations.of(context)!.arabic,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 228, 224, 236),
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
