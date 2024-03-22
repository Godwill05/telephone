import 'package:flutter/material.dart';
import 'package:telephone/components/chiffre.dart';

class KeyboardPage extends StatefulWidget {
  const KeyboardPage({super.key});

  @override
  State<KeyboardPage> createState() => _KeyboardPageState();
}


class _KeyboardPageState extends State<KeyboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clavier")
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 150),
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: 30),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Chiffre(chiffre: "1", subtitle: "",),
                    Chiffre(chiffre: "2", subtitle: "ABC",),
                    Chiffre(chiffre: "3", subtitle: "DEF",)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Chiffre(chiffre: "4", subtitle: "GHI",),
                    Chiffre(chiffre: "5", subtitle: "JKL",),
                    Chiffre(chiffre: "6", subtitle: "MNO",)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Chiffre(chiffre: "7", subtitle: "PQRS",),
                    Chiffre(chiffre: "8", subtitle: "TUV",),
                    Chiffre(chiffre: "9", subtitle: "WXYZ",)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Chiffre(chiffre: "*", subtitle: "",),
                    Chiffre(chiffre: "0", subtitle: "",),
                    Chiffre(chiffre: "#", subtitle: "",)
                  ],
                ),
              ),
            ],),
          ),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        child: Icon(Icons.phone, color: Colors.white,),
        shape: CircleBorder(
          eccentricity: 0
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
