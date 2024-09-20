import 'package:bloc/bloc.dart';
import 'package:localization/Helpers/constantes.dart';
import 'package:meta/meta.dart';

part 'apptheme_event.dart';
part 'apptheme_state.dart';

class AppthemeBloc extends Bloc<AppthemeEvent, AppthemeState> {
  AppthemeBloc() : super(AppthemeInitial()) {
    on<AppthemeEvent>((event, emit) {
      if (event is InitalThemeEvent) {
        if (sharedpreferences!.getString("theme") != null) {
          if (sharedpreferences!.getString("theme") == "l") {
            emit(ChangeTheme(appTheme: "l"));
          } else {
            emit(ChangeTheme(appTheme: "d"));
          }
        }
      } else if (event is LightThemeEvent) {
        sharedpreferences!.setString("theme", "l");
        emit(ChangeTheme(appTheme: "l"));
      } else if (event is DarkThemeEvent) {
        sharedpreferences!.setString("theme", "d");
        emit(ChangeTheme(appTheme: "d"));
      }
    });
  }
}
