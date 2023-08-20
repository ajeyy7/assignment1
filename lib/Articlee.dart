import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Article(),));
}
class Article extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Article"),
      ),
      body: Column(
        children: [
          Image.network("https://media.cnn.com/api/v1/images/stellar/prod/230712124429-01-elon-musk-0616.jpg?c=original"),
          Text("Elon Musk",style: GoogleFonts.caveat(fontSize: 30),),
          Expanded(child: SingleChildScrollView(
            child: Text("""  hgjhg"""),
          ))
        ],
        
      ),
    );
  }
}
