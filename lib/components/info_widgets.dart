import 'package:flutter/material.dart';
class InfoWidgets extends StatelessWidget {
  IconData? icon;
  String? title;
  String? content;
  InfoWidgets({Key? key, required this.title, required this.icon, this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0x8BB8B8CC), borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: 75,
        //width: 97,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){
              showDialog(context: context,
                  builder:(BuildContext context){
                return AlertDialog(
                  title: Text("$title"),
                  content: Text("$content"),
                  actions: <Widget>[
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text("Ok"))
                  ],
                );
                  } );
            }, icon: Icon(icon)),
            //SizedBox(width: 8), // Ajouter un peu d'espace entre l'icône et le texte
            Text("$title"),
          ],
        ),
      ),
    );
  }
}
