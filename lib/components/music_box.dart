import 'package:audioplayers/audioplayers.dart';
import 'package:dailymusic/model/music.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/track_model.dart';
class MusicBox extends StatelessWidget {
   final Music tracks;
   MusicBox({super.key, required this.tracks});
   AudioPlayer audioPlayer =  AudioPlayer();
   bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async
      {
        isPlaying = !isPlaying;
                if (isPlaying) {
                  await audioPlayer.play(UrlSource(tracks.audioURL));
                } else {
                  await audioPlayer.pause();
                }
      },
      child: Container
      (
        height: 250.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
        decoration:const BoxDecoration(
          color: Colors.black
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: 
          [
            Expanded(
              
              child: SizedBox(
                width: 0.8.sw,
                child: Image(image: NetworkImage(tracks.image,),
                          fit: BoxFit.fill,),
              )),
              SizedBox(height: 10.h,),
            Expanded(child: Text(tracks.name,
             style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold
             ),
            )
            )
          ],
        ),
       
      ),
    );
  }
  }
