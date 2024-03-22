import 'dart:async';

import 'package:flutter/material.dart';
import 'package:telephone/components/circleavatarwithtext.dart';
import 'package:telephone/components/info_widgets.dart';

class InfoContacts extends StatefulWidget {
  String? nom;
  String? mail;
  String ? prenom;
  String? numero;
  InfoContacts({super.key, required this.nom, this.numero, this.mail, this.prenom});

  @override
  State<InfoContacts> createState() => _InfoContactsState();
}

class _InfoContactsState extends State<InfoContacts> {


  @override
  Widget build(BuildContext context) {
    var size_screens = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Informations sur ${widget.nom} ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, backgroundColor: Colors.grey),),
        backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: [
          Container(

            padding: EdgeInsets.only(bottom: 5),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    //color: Colors.grey,
                    height: size_screens.height/3,

                    decoration: BoxDecoration(
                      color: Colors.grey
                    ),
                    child: Column(
                      children: [
                        CircleAvatarWithText(text: "${widget.nom?[0].toUpperCase()}"),
                        Text("\n${widget.nom}\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                        Container(
                          height: size_screens.height/10,
                          width: size_screens.width,
                          margin: EdgeInsets.only(bottom: 0),
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InfoWidgets(title: "Message", icon: Icons.message_sharp,content: "Contactable sur whatsapp et telegram ou par telephone sur ${widget.numero}",),
                              InfoWidgets(title: "Appel", icon: Icons.call),
                              InfoWidgets(title: "Vidéo", icon: Icons.video_camera_back_rounded),
                              InfoWidgets(title: "E-mail", icon: Icons.email_outlined, content: "${widget.mail}",),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0x69A3C1C1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatarWithText(text: "${widget.nom?[0].toUpperCase()}"),
                              Text("Photo et affiche du contact")
                            ],
                          ),
                          padding: EdgeInsets.only(top: 20, bottom: 20, ),
                          margin: EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white30,
                            /*border: Border.all(
                              color: Colors.black, // Couleur de la bordure
                              width: 2, // Épaisseur de la bordure
                            ),*/
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("\t\rTelegram"),
                              Text("https//t.me/@${widget.nom}", style: TextStyle(color: Colors.blueAccent),)
                            ],
                          ),
                          padding: EdgeInsets.only(top: 20, bottom: 20, left: 35),
                          margin: EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white30,
                            /*border: Border.all(
                              color: Colors.black, // Couleur de la bordure
                              width: 2, // Épaisseur de la bordure
                            ),*/
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("\t\rNotes"),
                              TextField(
                                decoration: InputDecoration(

                                ),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.only(top: 20, bottom: 20, left: 35),
                          margin: EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white30,
                            /*border: Border.all(
                              color: Colors.black, // Couleur de la bordure
                              width: 2, // Épaisseur de la bordure
                            ),*/
                          ),
                        ),
                        Container(
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
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Bloquer le correspondant", style: TextStyle(color: Colors.red),),
                            ],
                          ),
                          padding: EdgeInsets.only(top: 20, bottom: 20, left: 35),
                          margin: EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white30,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),


            ),
          ),
        ],
      ),
    );
  }
}
