/*
stf => StateFulWidget
stl => Stateleswidget
*/

import 'dart:math';

import 'package:flutter/material.dart';

class GestionCouleurs extends StatefulWidget {
  const GestionCouleurs({super.key});

  @override
  State<GestionCouleurs> createState() => _GestionCouleursState();
}

class _GestionCouleursState extends State<GestionCouleurs> {
  //attributs

  // tableau de couleurs T[i]=> List
  List<Color> listCouleurs = [
    Colors.pink,
    Colors.yellow,
    Colors.purple,
    Colors.cyanAccent,
  ];
  int index = 0;
  Color? uneCouleur = Colors.pink;

  changerDeuxCouleurs() {
    //1
    if (uneCouleur == Colors.green) {
      uneCouleur = Colors.red;
    } else {
      uneCouleur = Colors.green;
    }
  }

  changerNCouleurs() {
    //2
    // changement de couleurs arriere plan: à partir d'un ensemble de couleurs
    // liste de couleurs
    if (index <= listCouleurs.length - 1) {
      index += 1;
    } else {
      index = 0;
    }
    uneCouleur = listCouleurs[index];
  }

  changercouleurAleatoire() {
    //3
    setState(() {
      uneCouleur = Color.fromARGB(
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
      );
    });
  }

/*
setState(() {
              //changerDeuxCouleurs();
              //changerNCouleurs();
              changercouleurAleatoire();
            });
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uneCouleur,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Gestion des Clouleurs "),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            changercouleurAleatoire();
          },
          child: Text("Changer de Couleur"),
        ),
      ),
    );
  }
}
