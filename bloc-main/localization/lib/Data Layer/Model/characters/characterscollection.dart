import 'package:localization/Data%20Layer/Model/characters/characters.dart';

class Characterscollection {
  String error;
  List<CharactersModel> characters;

  Characterscollection({this.error = "", List<CharactersModel>? characters})
      : characters = characters ?? [];
}
