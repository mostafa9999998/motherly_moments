import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Courses_screen extends StatefulWidget {
  const Courses_screen({super.key,});
  static String coursesename = 'course';
  //final String videoUrl;
  @override
  State<Courses_screen> createState() => _Courses_screenState();
}

class _Courses_screenState extends State<Courses_screen> {
  late YoutubePlayerController _controller;

final vedieurl = 'https://www.youtube.com/watch?v=YMx8Bbev6T4' ;
  @override
  void initState() {
    final vedieid = YoutubePlayer.convertUrlToId(vedieurl);
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: vedieid!, // Replace with your YouTube video ID
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Container(
          padding: EdgeInsets.all(30),
          child: YoutubePlayer(
            controller:_controller ,
            showVideoProgressIndicator: true,
          ),
        ),

      ),
    );
  }
}
