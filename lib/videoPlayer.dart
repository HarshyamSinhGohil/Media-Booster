import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen( {super.key, required this.videoName, required this.artist, required this.videoImage, required this.video});

  final String? videoName;
  final String? artist;
  final String? videoImage;
  final String? video;

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController? playerController;
  ChewieController? chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    playerController = VideoPlayerController.asset(widget.video!);
    playerController!.initialize();
    chewieController = ChewieController(videoPlayerController: playerController!,
    autoPlay: true,
      allowPlaybackSpeedChanging: true,
      looping: false,
      fullScreenByDefault: true,
      allowFullScreen: true,



    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    chewieController!.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Video Player",style: TextStyle(color: Colors.white),
        ),
      ),


      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

             Container(
               height: MediaQuery.of(context).size.height,
               width: double.infinity,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
                 border: Border.all(color: Colors.white,width: 1,style: BorderStyle.solid,)

               ),
               child:  Chewie( controller: chewieController!,),
             ),

            // Text(widget.videoName!, style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold)),
            // Padding(
            //   padding: const EdgeInsets.only(top: 14),
            //   // child: Text(widget.artist!, style: TextStyle(color: Colors.white,fontSize: 15,)),
            // ),

          ],
        ),
      ),
    );
  }
}