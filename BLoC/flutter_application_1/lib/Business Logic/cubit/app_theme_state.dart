part of 'app_theme_cubit.dart';

@immutable
sealed class AppThemeState {}

final class AppThemeInitial extends AppThemeState {}

final class AppThemeLight extends AppThemeState {}

final class AppThemeDark extends AppThemeState {}
