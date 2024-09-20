import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:localization/Helpers/applocalizations.dart';
import 'package:localization/Helpers/constantes.dart';
import 'package:localization/Screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedpreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}
/*
Spanish : es
French : fr
Italian : it
Chinese : zh
Dutch : nl
Japanese : ja	

*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
        Locale('es'),
        Locale('fr'),
        Locale('it'),
        Locale('zh'),
        Locale('nl'),
        Locale('ja'),
      ],
      localizationsDelegates: [
        Applocalizations.delegate,
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (devicelocales, supportedLocales) {
        if (devicelocales != null) {
          for (var locale in supportedLocales) {
            if (locale.languageCode == devicelocales.languageCode) {
              return locale; // Return the supported locale that matches device locale
            }
          }
        }
        return supportedLocales.first; // Fallback if no match is found
      },
      home: Home(),
    );
  }
}
