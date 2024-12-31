import 'package:flutter/material.dart';

class TextSplash extends StatelessWidget {
  const TextSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Age Calculator', 
      style: TextStyle(
        color: Colors.blue, 
        fontSize: 20, 
        fontWeight: FontWeight.bold,
      )
    );
  }
}