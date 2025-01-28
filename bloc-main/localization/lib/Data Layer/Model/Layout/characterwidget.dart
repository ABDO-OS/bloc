import 'package:flutter/material.dart';
import 'package:localization/Data%20Layer/Model/characters/characters.dart';

class Characterwidget extends StatelessWidget {
  final CharactersModel characteritem;
  Characterwidget({super.key, required this.characteritem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 255, 255, 255)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: GridTile(
            child: characteritem.imageUrl!.isEmpty
                ? Image.asset(
                    "assets/images/d4af32dda6440ae6eae3ade9a2dca53e.jpg")
                : FadeInImage.assetNetwork(
                    placeholder:
                        "assets/images/d4af32dda6440ae6eae3ade9a2dca53e.jpg",
                    image: characteritem.imageUrl!,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
            footer: Text(
              characteritem.fullName ?? 'Unknown',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                height: 2,
                fontSize: 15,
              ),
            )),
      ),
    );
  }
}
