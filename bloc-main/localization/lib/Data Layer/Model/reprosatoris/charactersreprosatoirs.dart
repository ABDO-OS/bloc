// import 'package:flutter/cupertino.dart';
import 'package:localization/Data%20Layer/api_server/charcterapi.dart';
import 'package:localization/Data%20Layer/Model/characters/characters.dart';

class Charactersreprosatoirs {
  final Charcterapi charcterapi;

  Charactersreprosatoirs({required this.charcterapi});

  Future<List<Characters>> getCharater() async {
    var characters = await charcterapi.getCharater();
    List<Map<String, dynamic>> items =
        List<Map<String, dynamic>>.from(characters);

    List<Characters> seriescharacters = Characters.fromData(items);
    return seriescharacters;
  }
}
