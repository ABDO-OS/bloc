import 'package:flutter/material.dart';
// import 'package:language_app/categres/catrgory_item.dart';

import 'package:language_app/models/numbers.dart';

import '../categres/items_numbers.dart';

class phrasespage extends StatelessWidget {
  phrasespage({super.key});
  final List<Number> numbers = const [
    Number(
        sounds: 'sounds/phrases/are_you_coming.wav',
        // image: '',
        enName: "are you coming",
        jpName: "Kimasu ka"),
    Number(
        sounds: 'sounds/phrases/dont_forget_to_subscribe.wav',
        // image: 'assets/images/numbers/number_two.png',
        enName: "dont forget to subscribe",
        jpName: "Kōdoku suru koto o\nwasurenaide kudasai"),
    Number(
        sounds: 'sounds/phrases/how_are_you_feeling.wav',
        // image: 'assets/images/numbers/number_three.png',
        enName: "how are you feeling",
        jpName: "Go kibun wa ikagadesu ka"),
    Number(
        sounds: 'sounds/phrases/i_love_anime.wav',
        // image: 'assets/images/numbers/number_four.png',
        enName: "i love anime",
        jpName: "Watashi wa anime\nga daisukidesu"),
    Number(
        sounds: 'sounds/phrases/i_love_programming.wav',
        // image: 'assets/images/numbers/number_five.png',
        enName: "i love programming",
        jpName: "Watashi wa puroguramingu\nga daisukidesu"),
    Number(
        sounds: 'sounds/phrases/programming_is_easy.wav',
        // image: 'assets/images/numbers/number_six.png',
        enName: "programming is easy",
        jpName: "Puroguramingu wa kantandesu"),
    Number(
        sounds: 'sounds/phrases/what_is_your_name.wav',
        // image: 'assets/images/numbers/number_seven.png',
        enName: "what is your name",
        jpName: "Anata no namae wa nandesuka"),
    Number(
        sounds: 'sounds/phrases/where_are_you_going.wav',
        // image: 'assets/images/numbers/number_eight.png',
        enName: "where are you going",
        jpName: "Doko ni iku no"),
    Number(
        sounds: 'sounds/phrases/yes_im_coming.wav',
        // image: 'assets/images/numbers/number_nine.png',
        enName: "yes im coming",
        jpName: "Hai, kimasu"),
    // Number(
    //     sounds: 'sounds/numbers/number_ten_sound.mp3',
    //     image: 'assets/images/numbers/number_ten.png',
    //     enName: "ten",
    //     jpName: "Ju"),
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
          "Phrases",
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
          // Item(num: numbers[9]),
        ],
      ),

    );
  }
}

