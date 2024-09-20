import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_app/Business%20Logic/bloc/app_theme_bloc.dart';
import 'package:language_app/Screens/colorpage.dart';
import 'package:language_app/Screens/familypage.dart';
import 'package:language_app/Screens/number_page.dart';
import 'package:language_app/Screens/phrasespage.dart';
import 'package:language_app/categres/catrgory_item.dart';

class HomePge extends StatelessWidget {
  const HomePge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 50, 16, 6),
        title: const Text("tuko",
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: Column(
        children: [
          Spacer(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: category(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return numberPage();
                }));
              },
              name: "Numbers",
              color: Colors.orange,
            ),
          ),
          Spacer(),
          category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return familyPage();
              }));
            },
            name: "Family",
            color: Color.fromARGB(255, 42, 99, 44),
          ),
          Spacer(),
          category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return colorpage();
              }));
            },
            name: "Colors",
            color: Color.fromARGB(255, 98, 29, 118),
          ),
          Spacer(),
          category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return phrasespage();
              }));
            },
            name: "Phrases",
            color: const Color.fromARGB(255, 0, 174, 255),
          ),
          Spacer(
            flex: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<AppThemeBloc>(context)
                        .add(AppThemeLightEvent());
                  },
                  child: Text("Light")),
              SizedBox(
                width: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<AppThemeBloc>(context)
                        .add(AppThemeDarkEvent());
                  },
                  child: Text("Dark")),
            ],
          ),
          SizedBox(
            height: 200,
          )
        ],
      ),
    );
  }
}
