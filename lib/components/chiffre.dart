import 'dart:async';

import 'package:flutter/material.dart';
class Chiffre extends StatelessWidget {

    String ?chiffre;
    String? subtitle;
    Chiffre({super.key, required this.chiffre, this.subtitle});
    @override
    Widget build(BuildContext context) {
      return Container(
        height: 65,
        width: 65,
        padding: EdgeInsets.all(2),


        decoration: BoxDecoration(
          color: Color(0xb4c2bebe),
          borderRadius: BorderRadius.circular(60),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("$chiffre", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text("$subtitle", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ],
        ),
      );
    }
  }
