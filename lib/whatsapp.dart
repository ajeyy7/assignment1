import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Whatsapp(),
  ));
}

class Whatsapp extends StatelessWidget {
  @override
  var name = [
    "Dcit",
    "Lois",
    "Jefrin",
    "John",
    "James",
    "Adam",
    "Johny",
    "Jacky",
    "Alice",
    "Raman"
  ];
  var mess = [
    "Hey",
    "Hello",
    "Sup",
    "Hey",
    "Wsup",
    "Hi",
    "Wsup",
    "Heyman",
    "Yoman",
    "yes"
  ];
  var image = [
    "assets/images/sasd.jpg",
    "assets/images/Wall.jpg",
    "assets/images/dgf.jpg",
    "assets/images/Wall.jpg",
    "assets/images/sasd.jpg",
    "assets/images/Wall.jpg",
    "assets/images/dgf.jpg",
    "assets/images/Wall.jpg",
    "assets/images/dgf.jpg",
    "assets/images/dgf.jpg",
  ];
  var time = [
    "1:20 am",
    "9:00 am",
    "8:00 am",
    "5:00 am",
    "4:23 am",
    "yesterday",
    "yesterday",
    "yesterday",
    "yesterday",
    "yesterday"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("WhatsApp"),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 15),
          Icon(Icons.search_outlined),
          PopupMenuButton(itemBuilder: (context) {
            return const [
              PopupMenuItem(child: Text("New group")),
              PopupMenuItem(child: Text("New broadcast")),
              PopupMenuItem(child: Text("Linked devise")),
              PopupMenuItem(child: Text("Starred messages")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("Settings")),
            ];
          })
        ],
      ),
      body: ListView(
        children: List.generate(
            10,
                (index) => Card(
              child: ListTile(
                title: Text(name[index]),
                subtitle: Text(mess[index]),
                leading: CircleAvatar(
                  minRadius: 30,
                  maxRadius: 35,
                  backgroundImage: AssetImage(image[index]),
                ),
                trailing: Wrap(
                  direction: Axis.vertical,
                  children: [
                    Text(time[index]),
                    // SizedBox(width: 1),
                    CircleAvatar(
                      minRadius: 9,
                      maxRadius: 10,
                      backgroundColor: Colors.tealAccent,
                      child: Text("4"),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}