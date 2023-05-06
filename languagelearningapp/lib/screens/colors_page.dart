import 'package:flutter/material.dart';
import 'package:languagelearningapp/components/list_item.dart';
import 'package:languagelearningapp/models/item.dart';

class Colorspage extends StatelessWidget {
  const Colorspage({
    super.key,
  });

  static late double width;
  static late double height;

  final List<Item> familyMembers = const [
    Item(
      sound: 'black.wav',
      jpName: 'Burakku',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    Item(
      sound: 'brown.wav',
      jpName: 'Chairo',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    Item(
      sound: 'dusty yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    Item(
      sound: 'gray.wav',
      jpName: 'Gurē',
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    Item(
      sound: 'green.wav',
      jpName: 'Midori',
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    Item(
      sound: 'red.wav',
      jpName: 'Aka',
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
    ),
    Item(
      sound: 'white.wav',
      image: "assets/images/colors/color_white.png",
      jpName: 'Shiroi',
      enName: 'white',
    ),
    Item(
      sound: 'yellow.wav',
      image: "assets/images/colors/yellow.png",
      jpName: 'Kiiro',
      enName: 'yellow',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (BuildContext context, index) {
          return ListItem(item: familyMembers[index], itemType: "colors");
        },
      ),
    );
  }
}
