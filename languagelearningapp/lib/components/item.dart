import 'package:flutter/material.dart';

import '../models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});
  final Number number;
  static late double width;
  static late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.11,
      color: const Color(0xfff99430),
      child: Row(
        children: [
          Container(
            width: width * 0.23,
            height: height * 0.111,
            color: const Color(0xfffff4db),
            child: Image.asset(number.image),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.03),
                child: Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.03),
                child: Text(
                  number.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.03),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 29,
            ),
          )
        ],
      ),
    );
  }
}
