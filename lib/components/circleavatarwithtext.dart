import 'package:flutter/material.dart';

class CircleAvatarWithText extends StatelessWidget {
  String? text;
  CircleAvatarWithText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.grey[800], // Couleur de fond gris foncé
      foregroundColor: Colors.white, // Couleur du texte en blanc
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$text",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );

  }
}
