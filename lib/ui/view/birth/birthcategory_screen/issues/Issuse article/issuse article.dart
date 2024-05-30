import 'package:flutter/material.dart';
import 'package:motherly_moments/data/repo/apis/Api%20manager/Api%20manager.dart';
import 'package:motherly_moments/ui/view/birth/birthcategory_screen/issues/Issuse%20article/question%20style.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/provider/main provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IssuesArticle extends StatelessWidget {
  const IssuesArticle({super.key});
  static String issuearticlename = 'issuearticle';

  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width * .22,
        elevation: 0.01,
        backgroundColor: Colors.white,
        leadingWidth: MediaQuery.of(context).size.width * .23,
        title: Text(AppLocalizations.of(context)!.commonissues,
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
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .05),
        // padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * .05,
        //     top:MediaQuery.of(context).size.height * .03 ,
        //     left:MediaQuery.of(context).size.width * .05 ),
        child: FutureBuilder(
          future: Apimanager.getissues(provider.getissueid(),AppLocalizations.of(context)!.lang),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return QuestionStyle(issuesResponse: snapshot.data![index]);
                },
                itemCount: snapshot.data!.length,
              );
            } else if (snapshot.hasError) {
              return Center(child: Text('some thing went wrong !'));
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
