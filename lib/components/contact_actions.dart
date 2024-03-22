import 'package:flutter/material.dart';
class ContactActions extends StatelessWidget {
  String ? text;
  Color ? colors;
  ContactActions({super.key, required this.text, this.colors});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Partager cette fiche", style: TextStyle(color: Colors.blueAccent),),
          ],
        ),
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 35),
        margin: EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white30,
        ),
      ),
    );
  }
}
