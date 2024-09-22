import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/Helpers/applocalizations.dart';
import 'package:localization/business%20logic/Languages/bloc/applanguage_bloc.dart';
import 'package:localization/business%20logic/Theme/bloc/apptheme_bloc.dart';

class Home extends StatefulWidget {
  final String Message;

  const Home({super.key, required this.Message});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(255, 255, 243, 243),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 200),
                child: Container(
                  width: 300,
                  height: 100,
                  child: Center(
                    child: Text(
                      Applocalizations.of(context)!.translate('home_page'),
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                  // color: Colors.orange,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 255, 181, 69)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(Applocalizations.of(context)!.translate('home_page')),
                  Text(widget.Message),
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<ApplanguageBloc>(context)
                          .add(ArabicLanguageEvent());
                    },
                    child: Text(
                      'اللفة العربية',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.blue)),
                  ),
                  SizedBox(width: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<ApplanguageBloc>(context)
                          .add(EnglishLanguageEvent());
                    },
                    child: Text(
                      'english',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.blue)),
                  ),
                  SizedBox(width: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<AppthemeBloc>(context)
                          .add(LightThemeEvent());
                    },
                    child: Text(
                      'Light theme',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.blue)),
                  ),
                  SizedBox(width: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<AppthemeBloc>(context)
                          .add(DarkThemeEvent());
                    },
                    child: Text(
                      'Dark theme',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.blue)),
                  ),
                  SizedBox(width: 20.0),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
