import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/Data%20Layer/Model/Layout/layout.dart';
import 'package:localization/Data%20Layer/Model/Login/login.dart';
import 'package:localization/Data%20Layer/Model/characters/characters.dart';
import 'package:localization/Data%20Layer/Model/charactersdetaild.dart';
import 'package:localization/Data%20Layer/Model/reprosatoris/charactersreprosatoirs.dart';
import 'package:localization/Data%20Layer/api_server/charcterapi.dart';
import 'package:localization/Helpers/Route/routes.dart';
import 'package:localization/business%20logic/characters/bloc/characters_bloc.dart';

class Approuting {
  late Charactersreprosatoirs charactersreprosatoirs;
  Approuting() {
    charactersreprosatoirs = Charactersreprosatoirs(charcterapi: Charcterapi());
  }

  Route? GenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => CharactersBloc(charactersreprosatoirs),
                  child: LoginScreen(),
                ));
      case layoutScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => CharactersBloc(charactersreprosatoirs),
                  child: LayoutScreen(),
                ));

      case charactersDetails:
        final CharactersModel character = settings.arguments as CharactersModel;
        return MaterialPageRoute(
            builder: (_) => charactersDatailsScreen(character: character));

      default:
        return null;
    }
  }
}
