import 'package:flutter/material.dart';

class Tabsec extends StatelessWidget {
  const Tabsec({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child:
      ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Tabs(name:"Vegitables"),
          Tabs(name:"Fruits"),
          Tabs(name:"Exotics"),
          Tabs(name:"Fresh cuts"),
          Tabs(name:"frozen"),
        ],
      ),

    );
  }
}

class Tabs extends StatelessWidget {
  String name;
  Tabs({
    required this.name,
});


  @override
  Widget build(BuildContext context) {
 return Padding(
   padding: const EdgeInsets.all(8.0),
   child: Container(
     decoration: BoxDecoration(
       color: Colors.green,
       borderRadius: BorderRadius.circular(25),
     border: Border.all(color: Colors.green)
     ),
     child: Center(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text(name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
       ),
     ),
   ),
 );
  }}
