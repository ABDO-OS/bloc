import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/Data%20Layer/Model/Layout/characterlistwidget.dart';
import 'package:localization/Data%20Layer/Model/characterloading.dart';
import 'package:localization/Data%20Layer/Model/characters/characterscollection.dart';
import 'package:localization/business%20logic/characters/bloc/characters_bloc.dart';

Widget bloclayout(
  Characterscollection charactercollection,
  ScrollController scrollController,
) {
  return BlocBuilder<CharactersBloc, CharactersState>(
    builder: (context, state) {
      if (state is CharactersLoadedState) {
        charactercollection = state.characterscollection;
        return Characterlistwidget(
          characterCollection: charactercollection,
          characterController: scrollController,
        );
      } else if (state is CharactersLoadingState) {
        return Characterloading();
      } else if (state is CharactersErrorState) {
        return Center(child: Text("Error occurred while retrieving data"));
      }
      return Container(); // Fallback widget
    },
  );
}
