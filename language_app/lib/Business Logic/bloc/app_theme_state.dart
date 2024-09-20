part of 'app_theme_bloc.dart';

@immutable
sealed class AppThemeState {}

final class AppThemeInitial extends AppThemeState {}

final class AppThemeLightState extends AppThemeState {
  final String theme;
  AppThemeLightState({required this.theme});
}

final class AppThemeDarkState extends AppThemeState {
  final String theme;
  AppThemeDarkState({required this.theme});
}
