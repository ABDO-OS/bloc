import 'package:flutter/material.dart';
import 'package:flutter_application_1/Business%20Logic/cubit/app_theme_cubit.dart';
import 'package:flutter_application_1/Data/Models/Enums/themestate.dart';
import 'package:flutter_application_1/Data/Models/home.dart';
import 'package:flutter_application_1/Helpers/constance.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedpreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppThemeCubit()..changeTheme(Themestate.Inital),
      child: BlocBuilder<AppThemeCubit, AppThemeState>(
        builder: (context, state) {
          if (state is AppThemeLight) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "test",
              theme: ThemeData.light(),
              home: Home(),
            );
          } else if (state is AppThemeDark) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "test",
              theme: ThemeData.dark(),
              home: Home(),
            );
          }
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "test",
            home: Home(),
          );
        },
      ),
    );
  }
}
