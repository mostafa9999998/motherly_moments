import 'package:flutter/material.dart';
import 'package:motherly_moments/data/repo/apis/baby%20groth/Api%20manager.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../../../data/repo/moduls/category_video/ExerciseResponse.dart';
import '../../../../../../view_model/provider/main provider.dart';

class SelectmonthscreenV extends StatefulWidget {
  const SelectmonthscreenV({super.key});


  static String selectedmonthvname = 'selectedmonthvname';
  @override
  State<SelectmonthscreenV> createState() => _SelectmonthscreenVState();
}

class _SelectmonthscreenVState extends State<SelectmonthscreenV> {
  late YoutubePlayerController _controller;
  @override
  Widget build(BuildContext context) {
    Mainprovider provider = Provider.of(context);
    int month =provider.getmonth();
    String categ = provider.getcateg();

    return  Scaffold(
      appBar: AppBar(
        title: Text(' Insights',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            )),
        backgroundColor: Color(0xff8362D7),
      ),
      body: FutureBuilder<ExerciseResponse>(
        future: Apimanager.getcategoryvediodesc(month, categ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          else if (snapshot.hasError) {
            return Center(
              child: Column(
                  children:[ Container(
                    margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.03,
                        horizontal:MediaQuery.of(context).size.width*.1 ),
                    padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.03 ,
                      vertical: MediaQuery.of(context).size.height*.006,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow,
                    ),
                    child: Text(snapshot.error.toString()),
                  ),
                    ElevatedButton(onPressed: () {}, child: Text('Try Again'))
                  ]
              ),
            );
          }
          else{
           final vedieurl = snapshot.data!.video??'';
            final vedieid = YoutubePlayer.convertUrlToId(vedieurl);
            _controller = YoutubePlayerController(
              initialVideoId: vedieid!, // Replace with your YouTube video ID
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            );
            return SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * .05,
                    top: MediaQuery.of(context).size.height * .04,
                    left: MediaQuery.of(context).size.width * .05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      snapshot.data?.title??'null',
                      style:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.008),
                      child: YoutubePlayer(
                        controller:_controller ,
                        showVideoProgressIndicator: true,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Text(
                      snapshot.data?.title??'null',
                      style:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Text(
                      snapshot.data?.description??'null',
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
