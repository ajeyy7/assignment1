import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mphome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // body: SafeArea(
      //     child: CustomScrollView(
      //   slivers: [
      //     SliverAppBar(
      //       backgroundColor: Colors.black,
      //       pinned: false,
      //       floating: true,
      //       centerTitle: true,
      //       title: Text(
      //         "Musify",
      //         style: GoogleFonts.poppins(
      //             fontSize: 40,
      //             fontWeight: FontWeight.bold,-
      //             color: Colors.pinkAccent),
      //       ),
      //     ),
      //   ],
      // )),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Musify.",
            style: GoogleFonts.poppins(fontSize: 40, color: Colors.pinkAccent),
          ),
        ),
      ),
      body: Column(
        children: [
          CarouselSlider(
              items: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1522673999312-93aa76caeda6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2FyJTIwbXVzaWN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"))),
                ),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1522673999312-93aa76caeda6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2FyJTIwbXVzaWN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"))),
                ),
              ],
              options: CarouselOptions(
                initialPage: 0,
                height: 550,
                enableInfiniteScroll: true,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                autoPlay: true,
                scrollDirection: Axis.horizontal,
              )),
          Text(
            "Recommended for you",
            style: TextStyle(color: Colors.white),
          ),
          ListView(
            children: [
              ListTile(
                leading: CircleAvatar(minRadius: 20),
              )
            ],
          )
        ],
      ),
    );
  }
}
