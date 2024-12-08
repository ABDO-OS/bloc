part of 'characters_bloc.dart';

@immutable
sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}

final class CharactersLoadingState extends CharactersState {
  bool isFirstFeth;
  final Characterscollection characterscollection;
  CharactersLoadingState(
      {required this.characterscollection, this.isFirstFeth = false});
}

final class CharactersLoadedState extends CharactersState {
  final Characterscollection characterscollection;
  CharactersLoadedState({required this.characterscollection});
}

final class CharactersErrorState extends CharactersState {
  final Characterscollection characterscollection;
  CharactersErrorState({required this.characterscollection});
}
