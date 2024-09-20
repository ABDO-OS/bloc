import 'package:flutter/material.dart';
// import 'package:language_app/categres/catrgory_item.dart';
import 'package:language_app/models/numbers.dart';

import '../categres/items_numbers.dart';

class familyPage extends StatelessWidget {
  familyPage({super.key});
  final List<Number> numbers = const [
    Number(
        sounds: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        enName: "daughter",
        jpName: "Musume"),
    Number(
        sounds: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        enName: "father",
        jpName: "Chichioya"),
    Number(
        sounds: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        enName: "grand father",
        jpName: "Sofu"),
    Number(
        sounds: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        enName: "grand mother",
        jpName: "Sobo"),
    Number(
        sounds: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        enName: "mother",
        jpName: "Hahaoya"),
    Number(
        sounds: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        enName: "older bother",
        jpName: "Ani"),
    Number(
        sounds: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        enName: "older sister",
        jpName: "Ane"),
    Number(
        sounds: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        enName: "son",
        jpName: "Musuko"),
    Number(
        sounds: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        enName: "younger brohter",
        jpName: "Otōto"),
    Number(
        sounds: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        enName: "younger sister",
        jpName: "Imōto"),
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
          "Family",
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
