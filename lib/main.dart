import 'package:flutter/material.dart';
import 'screens/compteur.dart';
import 'screens/exe2_gestion_couleurs.dart';
import 'screens/produit_form_ui.dart';

void main() {
  runApp(MyApp()); //classe, racine de projet
}

/**
 variable: age, prixArticle
 classe:widget: Text(),GestionDesEtudnaiont()
 pakage: firebase_option.dart
 */
/*
  Widget => Classe
  * nature:
      - statique: Contenu qu'est fixe: Text("Bonsoir")
          un etat : sans etat: StateLessWidget
      - dynamique: plusiuers etats: changement
         - StateFulWidget: Data / attributs
             x = A , x=B => Etat
  * Arbre : racine :
     A() , B(), C()    
     A(B()): A pere, B fils
     -- A seul fils: child
     -- N fils: children[ child]
  * Text(), Center(), MaterialApp()




*/
// => stl
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //theme + routage+ langue+ orientation
    return MaterialApp(
      // creation d'une route nommée
      routes: {
        '/pagecompteur': (context) => Compteur(),
        '/pagecouleur': (context) => GestionCouleurs(),
        '/pageajoutproduit': (context) => ProduitForm(),
      },
      //Gestion des routes
      home:
          //ProduitForm(),
          //GestionImagesLocales(),
          //GestionImages(),
          //GestionCouleurs(),
          Compteur(),
      //MyFirstScreen(),
    );
  }
}
