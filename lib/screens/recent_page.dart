import 'package:flutter/material.dart';
import 'package:telephone/screens/favorite_page.dart';
import 'package:telephone/screens/info_contacts.dart';
import 'package:telephone/screens/keyboard_page.dart';

class RecentPage extends StatefulWidget {
  const RecentPage({super.key});

  @override
  State<RecentPage> createState() => _RecentPageState();

}

class _RecentPageState extends State<RecentPage> {
  final List <String> appelrRecent= [
    "Will",
    "Oussou",
    "George",
    "Cress",
    "Godwill",
    "Gasa",
    "Louange",
    "Ismael",
    "Péniel"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appels Récents"),
      ),
      body: ListView(
        children: appelrRecent.reversed
        .map((e) => ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>InfoContacts(nom: "$e",)));
          },
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/user.jpg'),),
          title: Text("$e"),
          subtitle: Text("il y a 1 min"),
          trailing: Icon(Icons.phone),
        )).toList(),
      ),
    );
  }
}
