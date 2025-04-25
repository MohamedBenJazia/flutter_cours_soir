import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import '../../code_all_tp/model/class_produit.dart';
import '../mywidget/Input_form.dart';

class ProduitForm extends StatefulWidget {
  const ProduitForm({super.key});

  @override
  State<ProduitForm> createState() => _ProduitFormState();
}

/**
 Produit CodeProduit : chaine 5
 libelle: chaine
 quantite: number

 */
class _ProduitFormState extends State<ProduitForm> {
  final keyform = GlobalKey<FormState>();

  Produit p = Produit(codeP: "", Lib: "", quantite: 0);

  // vlidation + recupération => KEYFORM

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajout produit"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Ajout un nouveau Article",
              style: TextStyle(color: Colors.blue, fontSize: 22),
            ),
            Container(
              height: 80,
              width: 140,
              child: Image.asset("assets/img/stock.jpg", fit: BoxFit.fill),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Form(
              key: keyform,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WidgetInputForm(
                    variableLabel: "Code Produit",
                    variableHintText: "Donner le code article",
                    variableCouleur: Colors.blue,
                    regleValidation: (value) {
                      if (value == null || value.length == 0) {
                        return "code Produit Obligatoire";
                      } else {
                        // [3..5]
                        if (value.length < 3 || value.length > 5) {
                          return " format de code incorrect [3..5]";
                        }
                      }
                    },
                    getData: (value) {
                      print("Code Article= ." + value!);
                      p.codeP = value;
                    },
                  ), // attribut constructeur
                  WidgetInputForm(
                    variableLabel: "Libellé Produit",
                    variableHintText: "Donner le libellé article",
                    variableCouleur: Colors.blue,
                    regleValidation: (value) {
                      if (value == null || value.length == 0) {
                        return "Libellé Produit Obligatoire";
                      } else {
                        // [5..15]
                        if (value.length < 5 || value.length > 15) {
                          return " format de code incorrect [5..15]";
                        }
                      }
                    },
                    getData: (value) {
                      print("Libellé  Article= ." + value!);
                      p.Lib = value;
                    },
                  ),
                  WidgetInputForm(
                    variableLabel: "Quantité Produit",
                    variableHintText: "Donner la Quantité  article",
                    variableCouleur: Colors.blue,
                    typeClavier: TextInputType.number,
                    regleValidation: (value) {
                      if (value == null || value.length == 0) {
                        return "Quantité Obligatoire";
                      } else {
                        // [>10]
                        if (int.parse(value) < 10) {
                          return "La quantité doit etre > 10";
                        }
                      }
                    },
                    getData: (value) {
                      //print("Quantité Article=  ${value!}");
                      p.quantite = int.parse(value!);
                    },
                  ),
                  //widgetCheckbokVenteEnligne(),
                  // widgetCheckbokListTileVenteSurPlace(),

                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            if (keyform.currentState!.validate()) {
                              keyform.currentState!.save();
                              print(p);
                              afficher_toast();
                            }
                          },
                          child: Text("Ajouter")),
                      ElevatedButton(
                          onPressed: () {
                            keyform.currentState!.reset();
                          },
                          child: Text("Annuler")),
                    ],
                  ),

                  /*afficher_zone_texte(),//parametre 
                   afficher_zone_texte(),
                    afficher_zone_texte(),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void afficher_toast() {
    const snackBar = SnackBar(
      /// need to set following properties for best effect of awesome_snackbar_content
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Information...',
        message: 'Article ajouté avec Succés',

        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
        contentType: ContentType.success,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
