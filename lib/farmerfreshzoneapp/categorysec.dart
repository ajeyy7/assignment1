import 'package:flutter/material.dart';

class Categorysec extends StatelessWidget {
  var imagg=[
    "https://images.unsplash.com/photo-1632776350300-11016768b521?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=931&q=80",
    "https://images.unsplash.com/photo-1610832958506-aa56368176cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJ1aXRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
   "https://images.unsplash.com/photo-1618897996318-5a901fa6ca71?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZnJ1aXRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
    "https://media.istockphoto.com/id/1426863749/photo/slices-of-raw-green-mango-on-leaves.webp?b=1&s=170667a&w=0&k=20&c=bMCr7UOUP1674FuODHyCqlsRBQs__g4qfon68qpdXMU=",
    "https://images.unsplash.com/photo-1490645935967-10de6ba17061?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bnV0cml0aW9ufGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1509358271058-acd22cc93898?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Zmxhdm91cnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60"

  ];
 var namm=[
"vegitables",
   "Fruits",
   "Exotics",
   "freshcuts",
   "Nutrition",
   "packed flavour"
 ];

  @override
  Widget build(BuildContext context) {
    return Container(
height: 350,
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index)=>Card(
    child: Column(
    children: [
      Container(
    width: 150,
    height: 80,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(5),
    topRight: Radius.circular(5)
    ),
    image: DecorationImage(fit: BoxFit.cover,
        image: NetworkImage(imagg[index]))
    ),
    ),
    SizedBox(height: 11),
    Text(namm[index],style: TextStyle(fontWeight: FontWeight.bold),)
    ],
    ),
    ),
      )
    );
  }
}
