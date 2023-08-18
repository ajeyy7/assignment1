import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Splashc(),
  ));
}

class Splashc extends StatelessWidget {
  const Splashc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/sasd.jpg"))),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // FaIcon(FontAwesomeIcons.amazonPay,size: 120,color: Colors.blueGrey,),
                Icon(
                  Icons.food_bank_outlined,
                  size: 140,
                  color: Colors.black,
                ),
                Text("Fresh  Foods", style: GoogleFonts.carterOne(fontSize: 30,color: Colors.black87)),
                Text(
                  "Tasty & Healthy",
                  style: GoogleFonts.caveat(fontSize: 30,color: Colors.black),
                ),
              ],
            )),
      ),
    );
  }
}