import 'package:flutter/material.dart';
import 'package:languagelearningapp/components/category_item.dart';
import 'package:languagelearningapp/main.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  late double Mywidth;
  late double Myheight;

  @override
  Widget build(BuildContext context) {
    // Mywidth = MediaQuery.of(context).size.width;
    // Myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Toku"),
        backgroundColor: Color(0xff46322B),
      ),
      body: Container(
        // width: Mywidth,
        // height: Myheight,
        child: Column(
          children: [
            // Category(
            //   text: "numbers",
            //   color: Color(0xfff99430),
            //   ontap: () {},
            // ),
            // Category(
            //   text: 'Family Members',
            //   color: Color(0xff517f31),
            //   ontap: () {},
            // ),
            // Category(
            //   text: 'Colors',
            //   color: Color(0xff7c3fa1),
            //   ontap: () {},
            // ),
            Category(
              text: 'Phrases',
              color: Color(0xff46a4ca),
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
