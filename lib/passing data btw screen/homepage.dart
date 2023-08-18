import 'dart:js';

import 'package:flutter/material.dart';

import 'dataapagee.dart';
import 'infopage.dart';
void main() {
  runApp(MaterialApp(
    home: Shoppd(),
    routes: {'info' :(context)=> Infopage()
    },
  ));
}

class Shoppd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lapstore"),
        backgroundColor: Colors.brown[100],
      ),
      body: ListView(
        children: prdts
            .map((onebyone) => Card(
          child: ListTile(
            leading: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(onebyone["image1"]))),
            ),
            title: Text(onebyone['name']),
            subtitle: Text('${onebyone['price']}'),
            onTap: () {
              gotoNextPage(context, onebyone['id']);
            },
          ),
        ))
            .toList(),
      ),
    );
  }

  void gotoNextPage(BuildContext context, lapId) {
    Navigator.pushNamed(context, 'info', arguments: lapId);
  }
}
