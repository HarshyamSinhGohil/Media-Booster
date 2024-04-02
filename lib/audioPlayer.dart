import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/slider_screen.dart';
import 'modelClass.dart';

class AudioPlayer extends StatefulWidget {
  const AudioPlayer({super.key, required this.currentIndex});

  final currentIndex;

  @override
  State<AudioPlayer> createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayer> {
  Color customWhitekClr = Color.fromARGB(255, 237, 237, 237);
  AssetsAudioPlayer player = AssetsAudioPlayer.newPlayer();
  bool isPlaying = false;
  final controller = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player.open(Audio(audioList[widget.currentIndex].song!),
        showNotification: true, autoStart: false);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player!.dispose();
    controller.dispose();
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
              SizedBox(
                height: 80,
              ),
              Container(
                height: 320,
                width: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            audioList[widget.currentIndex].songImage!),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 30.0,
                          offset: Offset(20, 20),
                          color: Colors.black.withOpacity(.6)),
                    ]),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                audioList[widget.currentIndex].songName!,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(audioList[widget.currentIndex].singer!,
                  style: TextStyle(fontSize: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        int head =  widget.currentIndex;
                        if(head!=0){
                          head--;

                        }
                        Navigator.of(context).pop(MaterialPageRoute(builder: (context) => AudioPlayer(currentIndex: head),));
                        player!.dispose();
                        controller.dispose();

                      },
                      icon: Icon(CupertinoIcons.backward_end_fill),
                      iconSize: 40),
                  (isPlaying == true)
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              isPlaying = false;
                            });
                            player.pause();
                          },
                          icon: Icon(CupertinoIcons.pause_fill),
                          iconSize: 40)
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              isPlaying = true;
                            });
                            player.play();
                          },
                          icon: Icon(CupertinoIcons.play_fill),
                          iconSize: 40),
                  IconButton(
                      onPressed: () {
                        int head = widget.currentIndex;
                        setState(() {
                          if(audioList.length-1!=head){
                            head++;
                          }
                        });
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => AudioPlayer(currentIndex: head),));
                        player!.dispose();
                        controller.dispose();
                        },
                      icon: Icon(CupertinoIcons.forward_end_fill),
                      iconSize: 40),
                ],
              ),
              player.builderRealtimePlayingInfos(
                  builder: (context, RealtimePlayingInfos? infos) {
                if (infos == null) {
                  return SizedBox();
                }
                return SliderScreen(
                    currentPosition: infos.currentPosition,
                    duration: infos.duration,
                    seekTo: (to) {
                      player.seek(to);
                    });
              })
            ],
          ),
        ));
  }
}
