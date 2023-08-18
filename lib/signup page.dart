import 'package:assignment1/loginpage.dart';
import 'package:assignment1/whatsapp.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Signup(),
  ));
}

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var formkey = GlobalKey<FormState>();
  bool nopassvisiblity = true;
  bool nopassvisiblity2 = true;
  String? pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //  title: Text("BLOCK"),
      //),
      body: Form(
          key: formkey,
          child: Column(
            children: [
              Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 150.0, left: 30.0, bottom: 13.0, right: 30.0),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 30),
                    ),
                  )),
              Text("Create An Account,Its Free"),
              Padding(
                padding: const EdgeInsets.only(
                    top: 13.0, left: 30.0, bottom: 13.0, right: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.perm_contact_calendar_outlined),
                    hintText: "Email ID",
                  ),
                  validator: (Emailid) {
                    if (Emailid!.isEmpty || !Emailid.contains('@')) {
                      return "this field is empty or invalid";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 13.0, left: 30.0, bottom: 13.0, right: 30.0),
                child: TextFormField(
                  obscureText: nopassvisiblity,
                  validator: (Password) {
                    pass = Password;
                    if (Password!.isEmpty || Password.length < 7) {
                      return "Field is empty or invalid";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (nopassvisiblity == true) {
                                nopassvisiblity = false;
                              } else {
                                nopassvisiblity = true;
                              }
                            });
                          },
                          icon: Icon(nopassvisiblity == true
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.hide_source_outlined),
                      hintText: "Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 13.0, left: 30.0, bottom: 13.0, right: 30.0),
                child: TextFormField(
                  obscureText: nopassvisiblity,
                  validator: (Confirmpassword) {
                    if (Confirmpassword!.isEmpty || pass != Confirmpassword) {
                      return "filed is empty or invalid";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (nopassvisiblity2 == true) {
                                nopassvisiblity2 = false;
                              } else {
                                nopassvisiblity2 = true;
                              }
                            });
                          },
                          icon: Icon(nopassvisiblity2 == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.hide_source_outlined),
                      hintText: "Confirm Password"),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Whatsapp()));
                    } else {
                      Fluttertoast.showToast(
                          msg: "Invalid Entries",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM_LEFT,
                          // timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: Text(
                    "SignUp",
                    style: TextStyle(fontSize: 20),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  style: TextButton.styleFrom(primary: Colors.green),
                  child: Text("Do you have an Account?Login"))
            ],
          )),
    );
  }
}