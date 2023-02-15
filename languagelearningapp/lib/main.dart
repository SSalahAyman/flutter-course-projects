import 'package:flutter/material.dart';
import 'package:languagelearningapp/screens/home_page.dart';

void main() {
  runApp(const tokuapp());
}

class tokuapp extends StatelessWidget {
  const tokuapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tokuapp',
      home: Homepage(),
    );
  }
}
