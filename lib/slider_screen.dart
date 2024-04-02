import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  final Duration currentPosition;
  final Duration duration;
  final Function(Duration) seekTo;
  const SliderScreen({super.key, required this.currentPosition, required this.duration, required this.seekTo});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  Duration? visibleValue;
  bool listenOnlyUserInteraction=false;
  double get percent=>widget.duration.inMilliseconds==0?0:visibleValue!.inMilliseconds/widget.duration.inMilliseconds;

  @override
  void initState() {
    // TODO: implement initState
    visibleValue=widget.currentPosition;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant SliderScreen oldWidget) {
    // TODO: implement didUpdateWidget
    if(!listenOnlyUserInteraction){
      visibleValue=widget.currentPosition;
    }
    super.didUpdateWidget(oldWidget);
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 40,
        child: Text(durationToString(widget.currentPosition)),),
        Expanded(child: Slider(
          min: 0,
          max: widget.duration.inMilliseconds.toDouble(),
          value: percent*widget.duration.inMilliseconds.toDouble(),
          onChanged: (double value) {
            setState(() {
              final to = Duration(milliseconds: value.floor());
              visibleValue=to;
              widget.seekTo(visibleValue!);
            });
          },)),
        SizedBox(width: 40,
          child: Text(durationToString(widget.duration)),),
      ],
    );
  }

  String durationToString(Duration duration){
    String twoDigits(int n){
      if(n>=10){
        return '$n';
      }
      return '0$n';
    }
    final twoDigitMinutes=twoDigits(duration.inMinutes.remainder(Duration.minutesPerHour));
    final twoDigitSeconds=twoDigits(duration.inSeconds.remainder(Duration.secondsPerMinute));
    return '$twoDigitMinutes:$twoDigitSeconds';
  }
}
