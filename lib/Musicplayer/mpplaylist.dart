import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mpplaylist extends StatelessWidget {
  var image=[
    "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bXVzaWMlMjBnZW5lcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1471478331149-c72f17e33c73?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bXVzaWMlMjBnZW5lcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bXVzaWMlMjBnZW5lcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1470019693664-1d202d2c0907?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bXVzaWMlMjBnZW5lcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1415201364774-f6f0bb35f28f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fG11c2ljJTIwZ2VuZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1482443462550-d2c99314ab6a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80",
    "https://images.unsplash.com/photo-1454922915609-78549ad709bb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fG11c2ljJTIwZ2VuZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bXVzaWMlMjBnZW5lcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            floating: true,
            pinned: false,
            centerTitle: true,
            title: Text(
              "Playlist",
              style: GoogleFonts.poppins(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent),
            ),
            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.black,
              title: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pinkAccent),
                  // color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45)),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.pinkAccent),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.pinkAccent,
                      )),
                ),
              ),
            ),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) => Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              height: 4,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(image[index])),
                borderRadius: BorderRadius.circular(100),
                color: Colors.black
              ),
            ),
          )) , gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 4,crossAxisSpacing: 4))
        ],
      )),
    );
  }
}
