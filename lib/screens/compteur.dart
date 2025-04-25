import 'package:flutter/material.dart';
import './../mywidget/mon_menu.dart';

class Compteur extends StatefulWidget {
  const Compteur({super.key});

  @override
  State<Compteur> createState() => _CompteurState();
}

class _CompteurState extends State<Compteur> {
  int cpt = 0;
  int i = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: Text("Compteur"),
      ),
      body: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                cpt++;
                print("cpt=$cpt");
              });
            },
            child: Text("+"),
          ),
          Text(cpt.toString()),
          Text(i.toString(), style: TextStyle(color: Colors.red)),
          ElevatedButton(
            onPressed: () {
              setState(() {
                cpt--;
                print("cpt=$cpt");
              });
            },
            child: Text("-"),
          ),
        ],
      ),
    );
  }
}
