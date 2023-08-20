import 'package:assignment1/Musicplayer/mphome.dart';
import 'package:assignment1/Musicplayer/mpmore.dart';
import 'package:assignment1/Musicplayer/mpplaylist.dart';
import 'package:assignment1/Musicplayer/mpsearch.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Musicplyer(),
  ));
}

class Musicplyer extends StatefulWidget {
  @override
  State<Musicplyer> createState() => _MusicplyerState();
}

class _MusicplyerState extends State<Musicplyer> {
  int index = 0;
  var screens = [
    Mphome(),
    Mpsearch(),
    Mpplaylist(),
    Mpmore(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
          backgroundColor: Colors.black,
          currentIndex: index,
          onTap: (bb) {
            setState(() {
              index = bb;
            });
          },
          items: [
            SalomonBottomBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                )),
            SalomonBottomBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                title: Text(
                  "Search",
                  style: TextStyle(color: Colors.white),
                )),
            SalomonBottomBarItem(
                icon: Icon(
                  Icons.play_arrow_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  "Playlist",
                  style: TextStyle(color: Colors.white),
                )),
            SalomonBottomBarItem(
                icon: Icon(Icons.more_horiz,color: Colors.white,),
                title: Text("More",style: TextStyle(color: Colors.white),))
          ]),
      body: screens[index]
    );
  }
}
