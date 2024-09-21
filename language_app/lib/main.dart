import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_app/Business%20Logic/bloc/app_theme_bloc.dart';
import 'package:language_app/Helpers/constant.dart';
import 'package:language_app/Screens/homePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const TocoApp());
}

class TocoApp extends StatelessWidget {
  const TocoApp({super.key});
/*hiiiiiii */
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppThemeBloc()..add(AppThemeinitalEvent()),
      child: BlocBuilder<AppThemeBloc, AppThemeState>(
        builder: (context, state) {
          if (state is AppThemeLightState) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.light(),
              home: HomePge(),
            );
          } else if (state is AppThemeDarkState) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.dark(),
              home: HomePge(),
            );
          }
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomePge(),
          );
        },
      ),
    );
  }
}




// hiiii



