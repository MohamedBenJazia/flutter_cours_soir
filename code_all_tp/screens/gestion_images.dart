import 'package:flutter/material.dart';
/*
Exercice: 
Essayer d'assurer le chargement d'une nouvelle image à chaque click sur le bouton
*/
class GestionImages extends StatefulWidget {
  const GestionImages({super.key});

  @override
  State<GestionImages> createState() => _GestionImagesState();
}

class _GestionImagesState extends State<GestionImages> {
  int taille = 100;
  int nbrImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Duplicate Image"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  taille += 5;
                  nbrImage += 1;
                });
              },
              child: Text("Afficher Image"),
            ),
            Expanded(
              child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(nbrImage, (index) {
                    return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          //width: 450,
                          //height: 250,
                          //color: Colors.red,
                          child: Image.network("https://picsum.photos/$taille",
                              fit: BoxFit.cover),
                        ));
                  })),
            ),

            /*Container(
              width: 450,
              height: 250,
              color: Colors.red,
              child: Image.network("https://picsum.photos/$taille",
                  fit: BoxFit.cover),
            ),*/
          ],
        ),
      ),
    );
  }
}
