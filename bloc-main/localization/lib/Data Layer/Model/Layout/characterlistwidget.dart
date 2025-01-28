import 'package:flutter/material.dart';
import 'package:localization/Data%20Layer/Model/Layout/characterwidget.dart';
import 'package:localization/Data%20Layer/Model/characterloading.dart';
import 'package:localization/Data%20Layer/Model/characters/characterscollection.dart';
import 'package:localization/Data%20Layer/Model/charactersdetaild.dart';

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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 34, 34),
      appBar: AppBar(
        title: Text(
          "characters",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 87, 87, 87),
      ),
      body: CustomScrollView(
        controller: widget.characterController,
        slivers: [
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => charactersDatailsScreen(
                            character:
                                widget.characterCollection.characters![index],
                          ),
                        ),
                      );
                    },
                    child: Characterwidget(
                      characteritem:
                          widget.characterCollection.characters![index],
                    ),
                  );
                },
                childCount: widget.characterCollection.characters.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2 / 3,
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 2)),
          SliverToBoxAdapter(
              child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Characterloading(),
          ))
        ],
      ),
    );
  }
}
