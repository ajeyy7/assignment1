import 'package:assignment1/signup page.dart';
import 'package:assignment1/whatsapp.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formkey= GlobalKey<FormState>();
  bool nopassvisibility=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key:formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 10,
            ),
            Center(child: Text("Welcome Back ! Login With Your Credentials")),
            SizedBox(height: 10),
            Padding(
              padding:
              const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
              child: TextFormField(
                decoration: (InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person_pin),
                    hintText: "Email ID")),
                validator: (Emailid){
                  if (Emailid!.isEmpty|| !Emailid.contains("@")){
                    return"field is empty or invalid";
                  }else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
              child: TextFormField(
                obscureText: nopassvisibility,
                validator: (Password){
                  if (Password!.isEmpty|| Password.length<7){
                    return "field is empty or invalid length";
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if (nopassvisibility==true){
                        nopassvisibility=false;
                      }else{
                        nopassvisibility=true;
                      }
                    });
                  }, icon: Icon(nopassvisibility==true?Icons.visibility_off
                      :Icons.visibility)),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Password",
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.of(context)
                        .push(
                        MaterialPageRoute(builder: (context) => Whatsapp()));
                  } else {
                    Fluttertoast.showToast(
                        msg: "invalid EmailId or Password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM_LEFT,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: Text("Login")),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Signup()));
                },
                style: TextButton.styleFrom(primary: Colors.green),
                child: Text("Do you Have An Account?Sign Up"))
          ],
        ),
      ),
    );
  }
}