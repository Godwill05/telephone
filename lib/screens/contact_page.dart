import 'package:flutter/material.dart';
import 'package:telephone/screens/add_contact.dart';
import 'package:telephone/models/new_contacts.dart';
import 'package:telephone/screens/favorite_page.dart';
import 'package:telephone/screens/info_contacts.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<NewContact> contactListe = []; // Liste pour stocker les contacts

  List<String> favoriteContact = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritePage(favorites: favoriteContact),
                ),
              );
            },
            icon: Icon(Icons.favorite),
          ),
          Text("Favoris"),
        ],
      ),
      body:
      ListView.builder(
        itemCount: contactListe.length,
        itemBuilder: (context, index) {
          final contact = contactListe[index];
          return ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/user.jpg')),
            title: Text("${contact.nom} ${contact.prenom}"),
            subtitle: Text("${contact.mail} \n ${contact.numero}"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>InfoContacts(nom: "${contact.nom}", mail: "${contact.mail}",prenom: "${contact.prenom}",numero: "${contact.numero}",)));
            },
            trailing: IconButton(
              icon: Icon(
                Icons.favorite,
                color: checkFavorite(contact) ? Colors.red : Colors.black,
              ),
              onPressed: () {
                addContactToFavorite(contact);
                setState(() {});
              },
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var newContact = await Navigator.push(context, MaterialPageRoute(builder: (context) => AddContact()));
          if (newContact != null) {
            setState(() {
              contactListe.add(newContact); // Ajouter le nouveau contact à la liste
            });
          }
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add, color: Colors.white, size: 25),
      ),
    );
  }

  addContactToFavorite(NewContact contact) {
    if (checkFavorite(contact)) {
      if (contact.nom != null) {
        favoriteContact.remove(contact.nom!);
      }
    } else {
      if (contact.nom != null) {
        favoriteContact.add(contact.nom!);
      }
    }
  }

  bool checkFavorite(NewContact contact) {
    return favoriteContact.contains(contact.nom);
  }
}
