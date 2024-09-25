part of 'apptheme_bloc.dart';

@immutable
sealed class AppthemeState {}

final class AppthemeInitial extends AppthemeState {}

class ChangeTheme extends AppthemeState {
  final String? appTheme;
  ChangeTheme({this.appTheme});
}
