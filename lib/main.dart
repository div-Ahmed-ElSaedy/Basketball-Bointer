// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'Pages/Welcom_Page.dart';

void main() {
  
  runApp(Main());
}

class Main extends StatelessWidget {
  Main({super.key});
  TextEditingController name1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomPage(),
    );
  }
}
