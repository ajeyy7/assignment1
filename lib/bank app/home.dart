import 'package:assignment1/bank%20app/paymentsec.dart';
import 'package:assignment1/bank%20app/refracz.dart';
import 'package:assignment1/bank%20app/tanscationpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Trans(),
  ));
}

class Trans extends StatelessWidget {
  const Trans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.qr_code)],
        title: Text("Welcome! AJAY"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Stackz(),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.ac_unit_outlined,
                    color: Colors.red,
                  ),
                  Text(
                    "WOULD YOU LIKE TO?",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                ],
              ),
            ),
                Padding(padding: EdgeInsets.all(18.0),
                child:Paymentsec(),),
                Padding(
                  padding: const EdgeInsets.only(bottom:60),
                  child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined,color: Colors.red,),
                      SizedBox(width: 20,),
                      Text("LAST TRANSCATION")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Transcation(
                    transcationid: "954683459864756",
                    date: "10-9-2023",
                    npr: "NPR.1,00000",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Transcation(
                    transcationid: "954683459864756",
                    date: "3-9-2023",
                    npr: "NPR.9,00000",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Transcation(
                    transcationid: "954683459864756",
                    date: "1-9-2023",
                    npr: "NPR.6,00000",
                  ),
                ),
          ]))
        ],
      ),
    );
  }
}
