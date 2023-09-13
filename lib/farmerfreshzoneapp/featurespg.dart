import 'package:flutter/material.dart';

class Featurespg extends StatelessWidget {
  const Featurespg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: .2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Columnitems(
            icon: Icons.policy,
            name: "30 MIN POLICY",
          ),
          Columnitems(icon: Icons.track_changes, name: "TRACEBLITY"),
          Columnitems(icon: Icons.source, name: "LOCAL SOURCING")
        ],
      ),
    );
  }
}

class Columnitems extends StatelessWidget {
  IconData icon;
  String name;

  Columnitems({
    required this.icon,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.green,),
        SizedBox(height: 5),
        Text(name, style: TextStyle(fontSize: 12),)
      ],
    );
  }

}
