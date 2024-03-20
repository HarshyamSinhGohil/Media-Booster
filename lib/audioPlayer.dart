import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioPlayer extends StatefulWidget {
  const AudioPlayer({super.key, required this.img, required this.songName, required this.singer,required this.song});

  final String? img;
  final String? songName;
  final String? singer;
  final String? song;

  
  @override
  State<AudioPlayer> createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayer> {
  Color customWhitekClr = Color.fromARGB(255, 237, 237, 237);
  AssetsAudioPlayer player = AssetsAudioPlayer.newPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;


  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    player.open(
        Audio(widget.song!),
        showNotification: true,
        autoStart: false);


  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Music Player"),
      ),
      body: Center(
        child: Column(

          children: [
            SizedBox(height: 80,),
            Container(
              height: 320,
              width: 320,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.img!),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(
                      blurRadius: 30.0,
                      offset: Offset(20, 20),
                      color: Colors.black.withOpacity(.6)
                  ),]
                
              ),
            ),
            SizedBox(height: 30,),
            Text(widget.songName!,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text(widget.singer!,style: TextStyle(fontSize: 20)),

            Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.backward_end_fill),iconSize: 40),
                (isPlaying==true)? IconButton(onPressed: (){
                  setState(() {
                    isPlaying=false;
                  });
                  player.pause();
                }, icon: Icon(CupertinoIcons.pause),iconSize: 40) :  IconButton(onPressed: (){
                 setState(() {
                   isPlaying=true;
                 });
                 player.play();
                }, icon: Icon(CupertinoIcons.play),iconSize: 40),

                IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.forward_end_fill),iconSize: 40),

              ],
            ),


          ],
        ),
      ),
    );
  }
}
