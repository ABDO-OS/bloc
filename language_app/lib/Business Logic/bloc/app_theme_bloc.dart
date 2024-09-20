import 'package:bloc/bloc.dart';
import 'package:language_app/Helpers/constant.dart';
import 'package:meta/meta.dart';

part 'app_theme_event.dart';
part 'app_theme_state.dart';

class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  AppThemeBloc() : super(AppThemeInitial()) {
    on<AppThemeEvent>((event, emit) {
      if (event is AppThemeinitalEvent) {
        if (sharedPreferences != null) {
          if (sharedPreferences?.getString("theme") == "Light") {
            print("lllllll");
            emit(AppThemeLightState(theme: "Light"));
          } else {
            print("dddddddd");
            emit(AppThemeDarkState(theme: "Dark"));
          }
        }
      } else if (event is AppThemeLightEvent) {
        print("lllllll");
        sharedPreferences?.setString("theme", "Light");
        emit(AppThemeLightState(theme: "Light"));
      } else if (event is AppThemeDarkEvent) {
        print("dddddddddd");
        sharedPreferences?.setString("theme", "Dark");
        emit(AppThemeDarkState(theme: "Dark"));
      }
    });
  }
}
