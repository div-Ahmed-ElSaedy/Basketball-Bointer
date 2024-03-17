// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TeamFeild extends StatelessWidget {
  const TeamFeild({super.key, required this.myControl, required this.hintText});

  final TextEditingController myControl;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          controller: myControl,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: const Color(0x3ED9D9FC),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
