import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/Data%20Layer/Model/Login/login.dart';
import 'package:localization/Data%20Layer/Model/reprosatoris/charactersreprosatoirs.dart';
import 'package:localization/Data%20Layer/api_server/charcterapi.dart';
import 'package:localization/Helpers/Route/approuting.dart';
import 'package:localization/Helpers/applocalizations.dart';
import 'package:localization/Helpers/constantes.dart';
import 'package:localization/Helpers/observers/Appobservers.dart';
import 'package:localization/business%20logic/Languages/bloc/applanguage_bloc.dart';
import 'package:localization/business%20logic/Theme/bloc/apptheme_bloc.dart';
import 'package:localization/business%20logic/characters/bloc/characters_bloc.dart';
import 'package:localization/business%20logic/connectivity/bloc/appconnectivity_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = Appobservers();
  sharedpreferences = await SharedPreferences.getInstance();
  final charcterApi = Charcterapi();
  runApp(MyApp(
    approuting: Approuting(),
    charcterApi: charcterApi,
  ));
}
/*
Spanish : es
French : fr
Italin : it
Chinese : zh
Dutch : nl
Japanese : ja	
*/

class MyApp extends StatelessWidget {
  final Approuting? approuting;
  final Charcterapi charcterApi;
  MyApp({
    this.approuting,
    required this.charcterApi,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => AppthemeBloc()..add(InitalThemeEvent())),
          BlocProvider(create: (context) => AppconnectivityBloc()),
          BlocProvider(
              create: (context) =>
                  ApplanguageBloc()..add(InitalLanguageEvent())),
          BlocProvider(
            create: (context) => CharactersBloc(
              Charactersreprosatoirs(
                charcterapi: charcterApi,
              ),
            ),
          ),
        ],
        child: Builder(builder: (context) {
          var themeState = context.select((AppthemeBloc bloc) => bloc.state);
          var langState = context.select((ApplanguageBloc bloc) => bloc.state);
          var connectivityState =
              context.select((AppconnectivityBloc bloc) => bloc.state);
          return MaterialApp(
            onGenerateRoute: approuting!.GenerateRoute,
            theme: themeState is ChangeTheme
                ? themeState.appTheme == "l"
                    ? ThemeData.light()
                    : ThemeData.dark()
                : ThemeData.light(),
            locale: langState is ChangeLanguage
                ? langState.applang == "en"
                    ? Locale("en")
                    : Locale("ar")
                : Locale("en"),
            debugShowCheckedModeBanner: false,
            supportedLocales: [
              Locale('en'),
              Locale('ar'),
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
                    return locale;
                  }
                }
              }
              return supportedLocales.first;
            },
            home: LoginScreen(),
            //  Home(
            //   Message: connectivityState is AppConnectedState
            //       ? "Internet is connected"
            //       : "Internet is not connected",
            // ),
          );
        })

        /*BlocBuilder<AppthemeBloc, AppthemeState>(
        builder: (context, themestate) {
          var theme = themestate is ChangeTheme ? themestate.appTheme : "l";
          return BlocBuilder<ApplanguageBloc, ApplanguageState>(
            builder: (context, langstate) {
              var lang = langstate is ChangeLanguage ? langstate.applang : "en";
              return BlocBuilder<AppconnectivityBloc, AppconnectivityState>(
                builder: (context, connetstate) {
                  var conn = connetstate is AppNotConnectedState
                      ? connetstate.internetmessage
                      : "Internet is Connectted";
                  return MaterialApp(
                    locale: Locale(lang!),
                    theme: theme == "l" ? ThemeData.light() : ThemeData.dark(),
                    debugShowCheckedModeBanner: false,
                    supportedLocales: [
                      Locale('en'),
                      Locale('ar'),
                    ],
                    localizationsDelegates: [
                      Applocalizations.delegate,
                      DefaultMaterialLocalizations.delegate,
                      DefaultWidgetsLocalizations.delegate,
                      DefaultCupertinoLocalizations.delegate,
                    ],
                    localeResolutionCallback:
                        (devicelocales, supportedLocales) {
                      if (devicelocales != null) {
                        for (var locale in supportedLocales) {
                          if (locale.languageCode ==
                              devicelocales.languageCode) {
                            return locale;
                          }
                        }
                      }
                      return supportedLocales.first;
                    },
                    home: Home(
                      Message: conn!,
                    ),
                  );
                },
              );
            },
          );
        },
      ),*/
        );
  }
}
