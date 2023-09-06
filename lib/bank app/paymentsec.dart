import 'package:flutter/material.dart';

class Paymentsec extends StatelessWidget {
  var icons=[Icons.smartphone,
  Icons.e_mobiledata_outlined,
  Icons.payments_outlined,
  Icons.attach_money_outlined,
  Icons.schedule_send,
  Icons.qr_code];


  var nam=[
    "My Accounts",
    "Eseva",
    "Payment",
    "Fund transfer",
    "Sheduled pay",
    "Scan to pay"
  ];
 Paymentsec({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: GridView.builder(
          itemCount: 6,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) => Card(
            elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icons[index],size: 50,color: Colors.red,),
                    SizedBox(height: 20,),
                    Text(nam[index],style: TextStyle(fontSize:17,fontWeight: FontWeight.bold),)
                  ],
                ),
              )),
    );
  }
}
