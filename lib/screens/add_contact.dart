import 'package:flutter/material.dart';
import 'package:telephone/components/input_card.dart';
import 'package:telephone/models/new_contacts.dart';
class AddContact extends StatelessWidget {
  const AddContact({super.key});

  @override
  Widget build(BuildContext context) {
    List<NewContact> newAddContact;

    DateTime? currentdate;
    final TextEditingController nomController = TextEditingController();
    final TextEditingController prenomController = TextEditingController();
    final TextEditingController mailController = TextEditingController();
    final TextEditingController numeroController = TextEditingController();
    GlobalKey <FormState> _formkey = GlobalKey <FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajouter Contact"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              InputCard(text: "Nom", controler: nomController,),
              InputCard(text: "Prenom", controler: prenomController,),
              InputCard(text: "Mail", controler: mailController,),
              InputCard(text: "Numéro", controler: numeroController,),
              TextButton(onPressed: () async{
                var date =  await showDatePicker(context: context,
                    firstDate: DateTime(1960),
                    lastDate: DateTime(2100));
                currentdate = date;
              }, child: Text("Date de naissance", style: TextStyle(color: Colors.green),)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pop(context, "$currentdate");
                    print(currentdate);
                  }, child: Text("Retour", style: TextStyle(
                      color: Colors.green
                  ),)

                  ),
                  ElevatedButton(onPressed: (){
                    //Navigator.pop(context, );
                    if(_formkey.currentState!.validate()){
                      String nom = nomController.text;
                      String prenom = prenomController.text;
                      String mail = mailController.text;
                      String numero = numeroController.text;
                      DateTime? dateNaissance = currentdate;
                      print(nom+"\n"+prenom+"\n"+mail+"\n"+numero+"\n"+"$dateNaissance");
                      NewContact newContact = NewContact(
                        nom: nom,
                        prenom: prenom,
                        numero: numero,
                        datenaissance: dateNaissance,
                        mail: mail,
                      );
                      Navigator.pop(context, newContact);
                    }
                    ;

                  }, child: Text("Enregistrer", style: TextStyle(color: Colors.green),))
                ],
              )
              ]
          ),
        ),
      ),
    );
  }
}
