import 'package:assignment1/farmerfreshzoneapp/account.dart';
import 'package:assignment1/farmerfreshzoneapp/cart.dart';
import 'package:assignment1/farmerfreshzoneapp/home.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Farmerfrs(),
  ));
}

class Farmerfrs extends StatefulWidget {
  const Farmerfrs({super.key});

  @override
  State<Farmerfrs> createState() => _FarmerfrsState();
}

class _FarmerfrsState extends State<Farmerfrs> {
  var index = 0;
var screens=[
  Homeff(),
  Cartff(),
  Accountff()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: index,
          onTap: (ff) {
            setState(() {
              index = ff;
            });
          },
          items: [
            SalomonBottomBarItem(
                icon: Icon(Icons.energy_savings_leaf), title: Text("Home")),
            SalomonBottomBarItem(icon: Icon(Icons.shopping_cart_outlined), title: Text("Cart")),
            SalomonBottomBarItem(icon: Icon(Icons.person), title: Text("Account"))
          ]),
      body: screens[index],
    );
  }
}
