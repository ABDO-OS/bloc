part of 'apptheme_bloc.dart';

@immutable
sealed class AppthemeEvent {}

class InitalThemeEvent extends AppthemeEvent {}

class LightThemeEvent extends AppthemeEvent {}

class DarkThemeEvent extends AppthemeEvent {}
