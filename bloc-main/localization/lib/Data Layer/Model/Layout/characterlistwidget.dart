import 'package:flutter/material.dart';
import 'package:localization/Data%20Layer/Model/characterloading.dart';
import 'package:localization/Data%20Layer/Model/characters/characterscollection.dart';

class Characterlistwidget extends StatefulWidget {
  Characterscollection characterCollection;
  ScrollController characterController;

  Characterlistwidget(
      {required this.characterCollection,
      required this.characterController,
      Key? key})
      : super(key: key);

  @override
  State<Characterlistwidget> createState() => _CharacterlistwidgetState();
}

class _CharacterlistwidgetState extends State<Characterlistwidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: widget.characterController,
      slivers: [
        SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {},
              childCount: widget.characterCollection.characters.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2 / 3,
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1)),
        SliverToBoxAdapter(
            child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Characterloading(),
        ))
      ],
    );
  }
}
