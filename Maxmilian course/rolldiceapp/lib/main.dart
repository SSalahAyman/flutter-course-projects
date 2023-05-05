import 'package:flutter/material.dart';
import 'package:rolldiceapp/screens/home_page.dart';

void main() {
  runApp(RollDiceApp());
}

class RollDiceApp extends StatelessWidget {
  const RollDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rolldice",
      home: HomePage(),
    );
  }
}
