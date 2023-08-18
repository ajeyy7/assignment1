import 'package:assignment1/loginpage.dart';
import 'package:assignment1/signup page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/images/lef.jpg"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello There!",
                style: TextStyle(fontSize: 40),
              ),
              Text(
                "Verify Your Identity",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(width: 3, height: 80),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },style: ElevatedButton.styleFrom(primary: Colors.grey),
                  child: Text("Login",style: TextStyle(fontSize: 20),)),

              ElevatedButton(onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Signup())
                );
              } ,style: ElevatedButton.styleFrom(
                  primary: Colors.grey
              ),child: Text("SignUp",style: TextStyle(fontSize: 20),))
            ],
          ),
        ),
      ),
    );
  }
}