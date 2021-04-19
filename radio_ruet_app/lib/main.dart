import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';




void main() {
  runApp(MyApp());
}




class MyApp extends StatefulWidget {





  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

//  String videoId = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=BBAyRBTfsOU");
//  //print(videoId1);


  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'HSyIURHSNA0',
    flags:  YoutubePlayerFlags(
        isLive: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: YoutubePlayer(
          controller: _controller,
          liveUIColor: Colors.amber,
        ),




    ),
    );
  }
}
