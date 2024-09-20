part of 'app_theme_bloc.dart';

@immutable
sealed class AppThemeEvent {}

class AppThemeinitalEvent extends AppThemeEvent{}
class AppThemeLightEvent extends AppThemeEvent{}
class AppThemeDarkEvent extends AppThemeEvent{}