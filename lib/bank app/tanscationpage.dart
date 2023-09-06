import 'package:flutter/material.dart';

class Transcation extends StatelessWidget {
  String transcationid;
  String date;
  String npr;

  Transcation(
      {required this.transcationid, required this.date, required this.npr});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 10,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10))),
      ),
      title: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "CWDR/",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              transcationid,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      subtitle: Text(date),
      trailing: Text(npr,style: TextStyle(fontWeight: FontWeight.bold),),
    );
  }
}
