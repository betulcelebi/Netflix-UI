
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoPlayers extends StatefulWidget {
  VideoPlayers({super.key,required this.videoUrl});
  String videoUrl;

  @override
  State<VideoPlayers> createState() => _VideoPlayersState();
}

class _VideoPlayersState extends State<VideoPlayers> {
  
  late YoutubePlayerController _controller;
  late DeviceOrientation yukari;
  late DeviceOrientation asagi;
  @override
  void initState() {
    _controller = YoutubePlayerController(initialVideoId: YoutubePlayerController.convertUrlToId(widget.videoUrl)!,
    params: YoutubePlayerParams(
      loop: true,
      color: 'transparent',
      desktopMode: true,
      strictRelatedVideos: true,
      showFullscreenButton: true
    )
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
       //yukari = DeviceOrientation.portraitUp,
       //asagi = DeviceOrientation.portraitDown
       DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight
    ]);
    return Scaffold(
    //   body: asagi == DeviceOrientation.portraitUp ? SizedBox(
    //     height: 100.h,
    //     width: 100.w,
    //     child: YoutubePlayerControllerProvider(controller: _controller, child: YoutubePlayerIFrame(
    //       controller: _controller,
    //     )),
    //   ):
    //   Center(child: Text('Ekran Değişti'),)
    // );
    body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: YoutubePlayerControllerProvider(controller: _controller, child: YoutubePlayerIFrame(
          controller: _controller,
        )),
      ),
    );
  }
}