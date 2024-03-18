// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zeyad_basket/items/conter_provider.dart';
import 'Pages/Welcom_Page.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  Main({super.key});
  TextEditingController name1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<counterProvider>(
      create:(context) => counterProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomPage(),
      ),
    );
  }
}
