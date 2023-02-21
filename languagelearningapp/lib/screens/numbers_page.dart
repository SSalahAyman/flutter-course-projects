import 'package:flutter/material.dart';
import 'package:languagelearningapp/components/item.dart';
import 'package:languagelearningapp/models/number.dart';

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
  final List<Number> numbers = const [
    Number(
        image: "assets/images/numbers/number_one.png",
        enName: "one",
        jpName: "ichi"),
    Number(
        image: "assets/images/numbers/number_two.png",
        enName: "two",
        jpName: "ichi"),
    Number(
        image: "assets/images/numbers/number_three.png",
        enName: "three",
        jpName: "ichi"),
    Number(
        image: "assets/images/numbers/number_four.png",
        enName: "four",
        jpName: "ichi"),
    Number(
        image: "assets/images/numbers/number_five.png",
        enName: "five",
        jpName: "ichi"),
    Number(
        image: "assets/images/numbers/number_six.png",
        enName: "six",
        jpName: "ichi"),
    Number(
        image: "assets/images/numbers/number_seven.png",
        enName: "seven",
        jpName: "ichi"),
    Number(
        image: "assets/images/numbers/number_eight.png",
        enName: "eight",
        jpName: "ichi"),
    Number(
        image: "assets/images/numbers/number_nine.png",
        enName: "nine",
        jpName: "ichi"),
    Number(
        image: "assets/images/numbers/number_ten.png",
        enName: "ten",
        jpName: "ichi"),
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
            return Item(
              number: numbers[index],
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

          // getlist(numbers),

          /*********************************************************************************************************/
        ),
      ),
    );
  }

  List<Widget> getlist(List<Number> numbers) {
    List<Widget> itemslist = [];
    for (int i = 0; i < numbers.length; i++) {
      itemslist.add(Item(number: numbers[i]));
    }
    return itemslist;
  }
}
