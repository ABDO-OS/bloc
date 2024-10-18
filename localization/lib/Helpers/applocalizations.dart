import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Applocalizations {
  Locale? locale;
  Applocalizations({this.locale});

  static Applocalizations? of(context) {
    return Localizations.of<Applocalizations>(context, Applocalizations);
  }

  static LocalizationsDelegate<Applocalizations> delegate =
      _ApplocalizationDeliget();

  late Map<String, String> jsonStrings;

  Future loadLangjson() async {
    String strings =
        await rootBundle.loadString('assets/${locale?.languageCode}.json');
    Map<String, dynamic> jsons = json.decode(strings);
    jsonStrings = jsons.map((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  String translate(String key) => jsonStrings[key] ?? " ";
}

class _ApplocalizationDeliget extends LocalizationsDelegate<Applocalizations> {
  @override
  bool isSupported(Locale locale) {
    return ['ar', 'en'].contains(locale.languageCode);
  }

  @override
  Future<Applocalizations> load(Locale locale) async {
    Applocalizations applocalizations = Applocalizations(locale: locale);
    await applocalizations.loadLangjson();
    return applocalizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<Applocalizations> old) =>
      false;
}
