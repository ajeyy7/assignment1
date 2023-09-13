import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Corosalpg extends StatelessWidget {
  const Corosalpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 250,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CarouselSlider(items:[
            Image.network("https://images.unsplash.com/photo-1632776350300-11016768b521?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=931&q=80"),
            Image.network("https://images.unsplash.com/photo-1689774156286-0160d3f9c700?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHZlZ2l0YWJsZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60")
          ] , options: CarouselOptions(
           // initialPage: 0,
            height: 200,
         //   aspectRatio: 16/9,
            viewportFraction: .5,
          )),
        )
      ),
    );
  }
}
