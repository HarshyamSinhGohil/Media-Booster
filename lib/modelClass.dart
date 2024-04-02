import 'dart:io';

class AudioData{
  final String? songName;
  final String? singer;
  final String? songImage;
  final String? song;
 



  AudioData(
      {required this.songName,
        required this.singer,
        required this.songImage,
        required this.song
      });

}


class VideoData{
  final String? videoName;
  final String? discription;
  final String? videoImage;
  final String? video;



  VideoData(
      {
        required this.videoName,
        required this.discription,
        required this.videoImage,
        required this.video,
      });

}

List<AudioData> audioList = [
  AudioData(songName: "Reflection", singer: "Made by Apple", songImage: "Assets/Images/01.jpg", song: "Assets/Audio/02.mp3"),
  AudioData(songName: "Perfect", singer: "ED Sheeran", songImage: "Assets/Images/02.jpeg", song: "Assets/Audio/perfect.mp3"),
  AudioData(songName: "King Shit", singer: "Shubh", songImage: "Assets/Images/04.jpg", song: "Assets/Audio/kingShit.mp3"),
  AudioData(songName: "Shape Of You", singer: "ED Sheeran", songImage: "Assets/Images/03.jpg", song: "Assets/Audio/shpeOfYou.mp3"),
  AudioData(songName: "Arcade", singer: "Johnny Huynh", songImage: "Assets/Images/05.jpg", song: "Assets/Audio/shpeOfYou.mp3"),
  AudioData(songName: "Lovely", singer: "Billie Elish", songImage: "Assets/Images/04.jpg", song: "Assets/Audio/kingShit.mp3"),
  AudioData(songName: "Way Down We Go", singer: "KALEO", songImage: "Assets/Images/05.jpg", song: "Assets/Audio/perfect.mp3"),


];
List videoList = [
  VideoData(videoName: "Deer In Snow", discription: "Video Shooted by Virat Ribadiya at Kashmir,This deer are broad flat feet make it both easy for them to walk across the snow and dig down through the snow to their favourite winter food, lichen and in blizzard conditions they face the prevailing wind which keeps their coats 'flat' and so trapping air between the hairs to create another insulating layer", videoImage: "Assets/Images/coverPhtoDeer.jpg", video: "Assets/Videos/01.mp4"),
  VideoData(videoName: "Lions", discription: "This Video has been shooted by Darshan at gir forest, The lion is a wild terrestrial animal called the king of the forest. The lion is a strong animal with a strong body, a big head, a majestic mane, and two fierce eyes. Lions are predatory animals and eat only after hunting. They have strong claws and sharp teeth, which help them hunt their prey and eat the flesh.", videoImage: "Assets/Images/coverLion.jpg", video: "Assets/Videos/02.mp4"),
  VideoData(videoName: "Gun Firing", discription: "This Video has been shooted by Ved at Gun Shooting Institute, The Gun is a wild terrestrial animal called the king of the forest. The lion is a strong animal with a strong body, a big head, a majestic mane, and two fierce eyes. Lions are predatory animals and eat only after hunting. They have strong claws and sharp teeth, which help them hunt their prey and eat the flesh.", videoImage: "Assets/Images/coverPistol.jpg", video: "Assets/Videos/pistol.mp4"),
  VideoData(videoName: "Cruise", discription: "This Video has been shooted by Jaymin at North Atlantic Ocean, The Ocean is a wild terrestrial animal called the king of the forest. The lion is a strong animal with a strong body, a big head, a majestic mane, and two fierce eyes. Lions are predatory animals and eat only after hunting. They have strong claws and sharp teeth, which help them hunt their prey and eat the flesh.", videoImage: "Assets/Images/coverCruise.jpg", video: "Assets/Videos/Cruise.mp4"),
  VideoData(videoName: "Deer In Snow", discription: "Video Shooted by Virat Ribadiya at Kashmir,This deer are broad flat feet make it both easy for them to walk across the snow and dig down through the snow to their favourite winter food, lichen and in blizzard conditions they face the prevailing wind which keeps their coats 'flat' and so trapping air between the hairs to create another insulating layer", videoImage: "Assets/Images/coverPhtoDeer.jpg", video: "Assets/Videos/01.mp4"),
  VideoData(videoName: "Lions", discription: "Video Shooted by Virat Ribadiya at Kashmir,This deer are broad flat feet make it both easy for them to walk across the snow and dig down through the snow to their favourite winter food, lichen and in blizzard conditions they face the prevailing wind which keeps their coats 'flat' and so trapping air between the hairs to create another insulating layer", videoImage: "Assets/Images/coverLion.jpg", video: "Assets/02.mp4"),
  VideoData(videoName: "Gun Firing", discription: "Video Shooted by Virat Ribadiya at Kashmir,This deer are broad flat feet make it both easy for them to walk across the snow and dig down through the snow to their favourite winter food, lichen and in blizzard conditions they face the prevailing wind which keeps their coats 'flat' and so trapping air between the hairs to create another insulating layer", videoImage: "Assets/Images/coverPistol.jpg", video: "Assets/Videos/pistol.mp4"),
  VideoData(videoName: "Cruise", discription: "Video Shooted by Virat Ribadiya at Kashmir,This deer are broad flat feet make it both easy for them to walk across the snow and dig down through the snow to their favourite winter food, lichen and in blizzard conditions they face the prevailing wind which keeps their coats 'flat' and so trapping air between the hairs to create another insulating layer", videoImage: "Assets/Images/coverCruise.jpg", video: "Assets/Videos/Cruise.mp4"),

];