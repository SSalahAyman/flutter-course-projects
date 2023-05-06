import 'package:flutter/material.dart';
import 'package:languagelearningapp/components/list_item.dart';
import 'package:languagelearningapp/models/item.dart';

class Numberspage extends StatelessWidget {
  const Numberspage({super.key});
  static late double width;
  static late double height;
  // final Number one = const Number(
  //     image: "assets/images/numbers/number_one.png",
  //     enName: "one",
  //     jpName: "ichi");

  /*
      creating list of numbers and the values of this list type of Number class
     */
  final List<Item> numbers = const [
    Item(
        image: "assets/images/numbers/number_one.png",
        enName: "one",
        jpName: "ichi",
        sound: 'number_one_sound.mp3'),
    Item(
        image: "assets/images/numbers/number_two.png",
        enName: "two",
        jpName: "Ni",
        sound: 'number_two_sound.mp3'),
    Item(
        image: "assets/images/numbers/number_three.png",
        enName: "three",
        jpName: "San",
        sound: 'number_three_sound.mp3'),
    Item(
        image: "assets/images/numbers/number_four.png",
        enName: "four",
        jpName: "Shi",
        sound: 'number_four_sound.mp3'),
    Item(
        image: "assets/images/numbers/number_five.png",
        enName: "five",
        jpName: "Go",
        sound: 'number_five_sound.mp3'),
    Item(
        image: "assets/images/numbers/number_six.png",
        enName: "six",
        jpName: "Roku",
        sound: 'number_six_sound.mp3'),
    Item(
        image: "assets/images/numbers/number_seven.png",
        enName: "seven",
        jpName: "Sebun",
        sound: 'number_seven_sound.mp3'),
    Item(
        image: "assets/images/numbers/number_eight.png",
        enName: "eight",
        jpName: "ichi",
        sound: 'number_eight_sound.mp3'),
    Item(
        image: "assets/images/numbers/number_nine.png",
        enName: "nine",
        jpName: "ichi",
        sound: 'number_nine_sound.mp3'),
    Item(
        image: "assets/images/numbers/number_ten.png",
        enName: "ten",
        jpName: "ichi",
        sound: 'number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers"),
        backgroundColor: Color(0xff46322B),
      ),
      body: Container(
        height: height,
        width: width,
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            print(index);
            return ListItem(
              itemType: "numbers",
              item: numbers[index],
            );
          },

          // Item(number: numbers[0]),
          // Item(number: numbers[1]),
          // Item(number: numbers[2]),
          // Item(number: numbers[3]),
          // Item(number: numbers[4]),
          // Item(number: numbers[5]),
          // Item(number: numbers[6]),
          // Item(number: numbers[7]),
          // Item(number: numbers[8]),
          // Item(number: numbers[9]),
          /*********************************************************************************************************/

          // getlist(numbers),  >>>> use this method when you use a list view without children attribute and without listview.builder

          /*********************************************************************************************************/
        ),
      ),
    );
  }

  List<Widget> getlist(List<Item> numbers) {
    List<Widget> itemslist = [];
    for (int i = 0; i < numbers.length; i++) {
      itemslist.add(ListItem(
        item: numbers[i],
        itemType: "numbers",
      ));
    }
    return itemslist;
  }
}
