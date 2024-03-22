import 'package:flutter/material.dart';
class FavoritePage extends StatelessWidget {
  List <String> favorites;
  FavoritePage({super.key, required this.favorites});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favoris (${favorites.length})"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritePage(favorites: favorites),
                ),
              );
            },
            icon: Icon(Icons.favorite),
          ),

          Text("Voir la liste", style: TextStyle(),),
        ],
      ),
      body: favorites.isEmpty
          ? Center(child: Text("Aucun favoris ajouté pour le moment"))
          : ListView(
        children: favorites
            .map((e) => ListTile(
          leading: CircleAvatar(),
          title: Text("$e"),
          subtitle: Text(""),
          trailing: Icon(Icons.favorite, color: Colors.red,),
        )).toList(),
      ),
    );
  }
}

