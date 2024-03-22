import 'package:flutter/material.dart';
import 'package:telephone/components/info_widgets.dart';
import 'package:telephone/screens/home_page.dart';
import 'package:telephone/screens/info_contacts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Téléphon",
      home: HomePage(),

    );
  }
}






