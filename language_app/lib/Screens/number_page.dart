import 'package:flutter/material.dart';
// import 'package:language_app/categres/catrgory_item.dart';
import 'package:language_app/models/numbers.dart';

import '../categres/items_numbers.dart';

class numberPage extends StatelessWidget {
  numberPage({super.key});
  final List<Number> numbers = const [
    Number(
        sounds: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        enName: "one",
        jpName: "ichi"),
    Number(
        sounds: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        enName: "two",
        jpName: "Ni"),
    Number(
        sounds: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        enName: "three",
        jpName: "Mittsu"),
    Number(
        sounds: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        enName: "four",
        jpName: "Shi"),
    Number(
        sounds: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        enName: "five",
        jpName: "Go"),
    Number(
        sounds: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        enName: "six",
        jpName: "Roku"),
    Number(
        sounds: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        enName: "seven",
        jpName: "Sebun"),
    Number(
        sounds: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        enName: "eight",
        jpName: "Hachi"),
    Number(
        sounds: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        enName: "nine",
        jpName: "Kyu"),
    Number(
        sounds: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        enName: "ten",
        jpName: "Ju"),
  ];

//  final Number one = new  Number(
//   image: 'assets/images/numbers/number_one.png',
//   enName: "one",
//   jpName: "ichi",
//  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Numbers",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 50, 16, 6),
      ),
      body: ListView(
        children: [
          Item(num: numbers[0]),
          Item(num: numbers[1]),
          Item(num: numbers[2]),
          Item(num: numbers[3]),
          Item(num: numbers[4]),
          Item(num: numbers[5]),
          Item(num: numbers[6]),
          Item(num: numbers[7]),
          Item(num: numbers[8]),
          Item(num: numbers[9]),
        ],
      ),
    );
  }
}
