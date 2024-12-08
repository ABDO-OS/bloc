import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localization/Data%20Layer/Model/characters/characters.dart';
import 'package:localization/Data%20Layer/Model/characters/characterscollection.dart';
import 'package:localization/Data%20Layer/Model/reprosatoris/charactersreprosatoirs.dart';
import 'package:meta/meta.dart';
part 'characters_event.dart';
part 'characters_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final Charactersreprosatoirs charactersreprosatoirs;
  CharactersBloc(this.charactersreprosatoirs) : super(CharactersInitial()) {
    on<CharactersEvent>((event, emit) {
      if (event is GetCharactersEvent) {
        getcharacter(event.isRefreched, event.page);
      } else if (event is LoginEvent) {
        Characterscollection characterscollection = Characterscollection();
        emit(CharactersLoadedState(characterscollection: characterscollection));
      }
    });
  }

  getcharacter(bool isRefreched, int page) {
    if (state is CharactersLoadingState) return;
    final currentSate = state;
    Characterscollection characterscollection =
        Characterscollection(characters: [], error: "");
    if (currentSate is CharactersLoadedState) {
      if (page == 1 && isRefreched) {
        characterscollection = Characterscollection(characters: [], error: "");
      } else {
        characterscollection = currentSate.characterscollection;
      }
    }
    emit(CharactersLoadingState(
        characterscollection: characterscollection, isFirstFeth: page == 1));
    charactersreprosatoirs.getCharater().then((Characterss) {
      if (Characterss.isEmpty) {
        characterscollection.error = "Data not found";
        emit(CharactersLoadingState(
          characterscollection: characterscollection,
        ));
      } else {
        final characteers =
            (state as CharactersLoadingState).characterscollection;
        // characteers.characters!.addAll(Characterss as List<Characters>);
        emit(CharactersLoadedState(characterscollection: characterscollection));
      }
    });
  }
}
