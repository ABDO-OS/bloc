import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/Helpers/applocalizations.dart';
import 'package:localization/Helpers/constantes.dart';
import 'package:localization/Screens/home.dart';
import 'package:localization/business%20logic/Languages/bloc/applanguage_bloc.dart';
import 'package:localization/business%20logic/Theme/bloc/apptheme_bloc.dart';
import 'package:localization/business%20logic/connectivity/bloc/appconnectivity_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedpreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => AppthemeBloc()..add(InitalThemeEvent())),
        BlocProvider(create: (context) => AppconnectivityBloc()),
        BlocProvider(
            create: (context) => ApplanguageBloc()..add(InitalLanguageEvent())),
      ],
      child: BlocBuilder<AppthemeBloc, AppthemeState>(
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
      ),
    );
  }
}
