import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/modelClass.dart';
import 'package:media_booster/videoPlayer.dart';

class videoscreen extends StatefulWidget {
  const videoscreen({super.key});

  @override
  State<videoscreen> createState() => _videoscreenState();
}

class _videoscreenState extends State<videoscreen> {


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent (
                                maxCrossAxisExtent: 220,
                                childAspectRatio: 1,
                                crossAxisSpacing: 4,
                                mainAxisSpacing: 4,
      ),

        itemCount: videoList.length,
        itemBuilder: (context, int index){
      return
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 6.0,right: 6.0),
            child: Column(
              children: [

                SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VideoPlayerScreen(videoName: videoList[index].videoName, artist: videoList[index].discription, videoImage: videoList[index].videoImage, video: videoList[index].video,)));
                  },
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          width: 180,
                          decoration:  BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(image: AssetImage(videoList[index].videoImage),fit: BoxFit.cover,opacity: .6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:  Column(
                             // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 65,bottom: 30),
                                child: Icon(CupertinoIcons.play_circle,size: 50,color: Colors.white,),
                              ),
                              Text(videoList[index].videoName,style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),)
                            ],
                          )
                        ),



                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      
    });
    
  }
}