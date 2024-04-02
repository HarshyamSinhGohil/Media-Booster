import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/modelClass.dart';
import 'audioPlayer.dart';

class audioscreen extends StatefulWidget {
  const audioscreen({super.key});

  @override
  State<audioscreen> createState() => _audioscreenState();
}

class _audioscreenState extends State<audioscreen> {

  Color customBlckClr = Color.fromARGB(255, 53, 53, 53);
  Color customWhitekClr = Color.fromARGB(255, 237, 237, 237);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: audioList.length,
        itemBuilder: (context, int index){
      return
        Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder:  (context) => AudioPlayer(currentIndex: index),));

                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    height: 80,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border(top: BorderSide(width: 0.1,color: Colors.black))
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 35,
                                backgroundImage: AssetImage(audioList[index].songImage!),
                              ),
                            ),
                            Column(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 25,left: 15),
                                      child: Text(audioList[index].songName!,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30,left: 20),
                                      child: Text(audioList[index].singer!,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
    });


  }
}