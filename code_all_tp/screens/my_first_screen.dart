import 'package:flutter/material.dart';

class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first page"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Bonsoir à tous ",
              style: TextStyle(fontSize: 40, color: Colors.red),
            ),
            Text(
              "Etudiants Groupe cours de soir ",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            Container(
              width: 150,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                onPressed: () {
                  print("click sur bouton 1");
                },
                child: Text("bouton 1", style: TextStyle(color: Colors.white)),
              ),
            ),
            Icon(Icons.ac_unit, size: 50, color: Colors.blue),
            Container(
              width: 120,
              height: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                onPressed: () {
                  print("click sur bouton 2");
                },
                child: Text("bouton 2"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6),
            ),
            Container(
              width: 150,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                onPressed: () {
                  print("click sur bouton 3");
                },
                child: Text("bouton 3"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
