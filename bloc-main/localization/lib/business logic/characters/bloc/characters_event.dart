part of 'characters_bloc.dart';

@immutable
sealed class CharactersEvent {}

// ignore: must_be_immutable
class GetCharactersEvent extends CharactersEvent {
  bool isRefreched;
  int page;

  GetCharactersEvent({required this.isRefreched, required this.page});
}

class LoginEvent extends CharactersEvent {}
