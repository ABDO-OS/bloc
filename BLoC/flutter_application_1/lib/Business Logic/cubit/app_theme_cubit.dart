import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/Helpers/constance.dart';
import 'package:meta/meta.dart';
import 'package:flutter_application_1/Data/Models/Enums/themestate.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(AppThemeInitial());

  changeTheme(Themestate state) {
    switch (state) {
      case Themestate.Inital:
        if (sharedpreferences!.getString("theme") != null) {
          if (sharedpreferences!.getString("theme") == "light") {
            emit(AppThemeLight());
          } else {
            emit(AppThemeDark());
          }
        }
        break;
      case Themestate.Light:
        sharedpreferences!.setString("theme", "light");
        emit(AppThemeLight());
        break;

      case Themestate.Dark:
        sharedpreferences!.setString("theme", "light");
        emit(AppThemeDark());
        break;
    }
  }
}
