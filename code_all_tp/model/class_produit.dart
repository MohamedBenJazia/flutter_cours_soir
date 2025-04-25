// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Produit {
  String codeP;
  String Lib;
  int quantite;
  //constructeur
  Produit({
    required this.codeP,
    required this.Lib,
    required this.quantite,
  });
  //const + Mthode + getter /setter

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeP': codeP,
      'Lib': Lib,
      'quantite': quantite,
    };
  }

  factory Produit.fromMap(Map<String, dynamic> map) {
    return Produit(
      codeP: map['codeP'] as String,
      Lib: map['Lib'] as String,
      quantite: map['quantite'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Produit.fromJson(String source) =>
      Produit.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Produit(codeP: $codeP, Lib: $Lib, quantite: $quantite)';

  void addProduit() {
    //DB
  }
}
