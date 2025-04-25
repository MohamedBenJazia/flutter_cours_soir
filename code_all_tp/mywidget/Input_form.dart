import 'package:flutter/material.dart';

class WidgetInputForm extends StatelessWidget {
  String variableLabel;
  String variableHintText;
  Color? variableCouleur;
  TextInputType? typeClavier;
  String? Function(String?)? regleValidation;
  void Function(String?)? getData;

   WidgetInputForm({super.key,required this.variableLabel,
    required this.variableHintText,
    this.typeClavier=TextInputType.text,
     this.variableCouleur=Colors.red,
     required this.regleValidation,
     required this.getData,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 8,bottom: 8),
            child: TextFormField(
              keyboardType: typeClavier,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.label),
            
                iconColor: Colors.blue,
                label: Text(variableLabel),
                hintText: variableHintText,
                hintStyle: TextStyle(color: variableCouleur),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
              validator: regleValidation,
              onSaved: getData,
            ),
          );
  }
}