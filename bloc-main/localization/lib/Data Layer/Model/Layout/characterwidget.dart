import 'package:flutter/material.dart';

import 'package:localization/Data%20Layer/Model/characters/characters.dart';

class Characterwidget extends StatelessWidget {
  CharactersModel characteritem;
  Characterwidget({super.key, required this.characteritem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: GridTile(
          child: characteritem.imageUrl!.isEmpty
              ? FadeInImage.assetNetwork(
                  placeholder:
                      "assets/images/d4af32dda6440ae6eae3ade9a2dca53e.jpg",
                  image: characteritem.imageUrl!,
                  width: double.infinity,
                  height: double.infinity,
                )
              : Image.asset(
                  "assets/images/d4af32dda6440ae6eae3ade9a2dca53e.jpg"),
          footer: Text(
            characteritem.fullName!,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.6,
              fontSize: 13,
            ),
          )),
    );
  }
}
