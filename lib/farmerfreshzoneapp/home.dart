import 'package:assignment1/farmerfreshzoneapp/categorysec.dart';
import 'package:assignment1/farmerfreshzoneapp/courosalpage.dart';
import 'package:assignment1/farmerfreshzoneapp/featurespg.dart';
import 'package:assignment1/farmerfreshzoneapp/tabsec.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homeff extends StatelessWidget {
  const Homeff({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            pinned: false,
            actions: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Text("Kochi"),
                  Icon(Icons.keyboard_arrow_down)
                ],
              )
            ],
            title: Text(
              "FARMERS FRESH ZONE",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            bottom: AppBar(
              elevation: 2,
              backgroundColor: Colors.green,
              title: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                width: double.infinity,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    hintText: "Search for vegitables and fruits...",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              Tabsec(),
              Corosalpg(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Featurespg(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Shop By Category",style: TextStyle(fontSize: 20),),
              ),
              Categorysec(),
            ]
          ))
        ],
      )),
    );
  }
}
