import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/Data%20Layer/Model/Layout/characterlistwidget.dart';
import 'package:localization/Data%20Layer/Model/characterloading.dart';
import 'package:localization/Data%20Layer/Model/characters/characterscollection.dart';
import 'package:localization/business%20logic/characters/bloc/characters_bloc.dart';

Widget bloclayout(Characterscollection charactercollection,
    ScrollController scrollController) {
  BlocBuilder<CharactersBloc, CharactersState>(
    builder: (context, state) {
      if (state is CharactersLoadedState) {
        charactercollection = state.characterscollection;
        return Characterlistwidget();
      } else if (state is CharactersLoadingState) {}
      return Characterloading();
    },
  );
  return Container();
}
