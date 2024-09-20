import 'package:flutter/material.dart';
// import 'package:language_app/categres/catrgory_item.dart';
import 'package:language_app/models/numbers.dart';

import '../categres/items_numbers.dart';

class colorpage extends StatelessWidget {
  colorpage({super.key});
  final List<Number> numbers = const [
    Number(
        sounds: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        enName: "black",
        jpName: "Kuro"),
    Number(
        sounds: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        enName: "brown",
        jpName: "Chairo"),
    Number(
        sounds: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        enName: "dusty yellow",
        jpName: "Hokori ppoi kiiro"),
    Number(
        sounds: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        enName: "gray",
        jpName: "Gurē"),
    Number(
        sounds: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        enName: "green",
        jpName: "Midori"),
    Number(
        sounds: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        enName: "red",
        jpName: "Aka"),
    Number(
        sounds: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        enName: "white",
        jpName: "Shiro"),
    Number(
        sounds: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        enName: "yellow",
        jpName: "Kiiro"),
    // Number(
    //     sounds: 'sounds/family_members/younger brohter.wav',
    //     image: 'assets/images/family_members/family_younger_brother.png',
    //     enName: "younger brohter",
    //     jpName: "Otōto"),
    // Number(
    //     sounds: 'sounds/family_members/younger sister.wav',
    //     image: 'assets/images/family_members/family_younger_sister.png',
    //     enName: "younger sister",
    //     jpName: "Imōto"),
  ];

//  final Number one = new  Number(
//   image: 'assets/images/numbers/number_one.png',
//   enName: "one",
//   jpName: "ichi",
//  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   Colors.orange,
      appBar: AppBar(
        title: Text(
          "Color",
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
          // Item(num: numbers[8]),
          // Item(num: numbers[9]),
        ],
      ),
    );
  }
}
