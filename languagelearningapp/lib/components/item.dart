// import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});
  final Number number;
  static late double width;
  static late double height;

  final List<String> soundcategories = const [
    'assets/sounds/numbers/',
    'assets/sounds/colors/',
    'assets/sounds/family_members/',
    'assets/sounds/phrases/'
  ];

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
              child: IconButton(
                  onPressed: () {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/numbers/');
                    player.play(number.sound);
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 29,
                  )))
        ],
      ),
    );
  }

  List<String> getsoundcategories(List<String> soundcategories) {
    List<String> soundslist = [];
    for (int i = 0; i < soundslist.length; i++) {
      soundslist.add(soundcategories[i]);
    }
    return soundslist;
  }
}
