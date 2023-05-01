import 'package:dailymusic/components/music_box.dart';
import 'package:dailymusic/list_music_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyMusicList extends StatelessWidget {
   MyMusicList({super.key});
 
  final ListController listController = Get.put(ListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  listController.musiclist.isEmpty
          ?
          const Center(child: CircularProgressIndicator(),)
          : 
         
             ListView.builder(
            itemCount: listController.musiclist.length,
            itemBuilder: (context,index)
             {
              return MusicBox
              (
                tracks: listController.musiclist[index],
              );
                
             }
            ),
      );
  }
}