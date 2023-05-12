import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Search a city",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: TextField(),
        ),
      ),
    );
  }
}
