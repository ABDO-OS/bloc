import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/Data%20Layer/Model/Layout/characterlistwidget.dart';
import 'package:localization/Data%20Layer/Model/characterloading.dart';
import 'package:localization/business%20logic/characters/bloc/characters_bloc.dart';

Widget bloclayout() {
  BlocBuilder<CharactersBloc, CharactersState>(
    builder: (context, state) {
      if (state is CharactersLoadedState) {
        return Characterlistwidget();
      } else if (state is CharactersLoadingState) {}
      return Characterloading();
    },
  );
  return Container();
}
