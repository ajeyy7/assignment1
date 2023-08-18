import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Musicplayer(),
  ));
}

class Musicplayer extends StatelessWidget {
  var img = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.black, items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search_sharp,
            color: Colors.white,
          ),
        ),
        BottomNavigationBarItem(
            icon: Icon(
          Icons.library_music_outlined,
          color: Colors.white,
        ))
      ]),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            floating: true,
            pinned: false,
            title: Center(
              child: Text("Playlist", style: GoogleFonts.caveat(fontSize: 50)
                  //TextStyle(fontSize: 50, color: Colors.red[400]),
                  ),
            ),
            bottom: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 50,
                color: Colors.blueGrey[900],
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      hintText: "Search...",
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
          SliverGrid(
              delegate:
                  SliverChildBuilderDelegate((context, index) => Container(
                        height: 100,
                        width: 100,
                        color: Colors.black,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/gg6.jpg"),
                        )),
                      )),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2))
        ],
      )),
    );
  }
}
