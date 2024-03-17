// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  Bottom(
      {super.key,
      required this.onTap,
      required this.text,
      required this.color});

  Function()? onTap;
  final String text;
  Color color = const Color(0xff1B4242);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        minimumSize: const Size(150, 50),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 19,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
