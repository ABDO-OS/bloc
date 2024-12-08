import 'package:localization/Data%20Layer/Model/characters/characters.dart';

class Characterscollection {
  String error;
  List<Characters> characters;

  Characterscollection({this.error = "", List<Characters>? characters})
      : characters = characters ?? [];
}
