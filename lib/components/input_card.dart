import 'package:flutter/material.dart';
class InputCard extends StatelessWidget {
  final TextEditingController controler;
  final String? text;
  InputCard({super.key, required this.text, required this.controler});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: TextFormField(
        controller: controler,
        decoration: InputDecoration(border: OutlineInputBorder(),label: Text("$text")),
        validator: (value){
          if (value == null || value.isEmpty){
            return "Veuiller saisir le ${text}";
          }
          return null;
        },
      ),
    );
  }
}
