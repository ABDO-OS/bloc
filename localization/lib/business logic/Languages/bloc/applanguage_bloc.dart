import 'package:bloc/bloc.dart';
import 'package:localization/Helpers/constantes.dart';
import 'package:meta/meta.dart';

part 'applanguage_event.dart';
part 'applanguage_state.dart';

class ApplanguageBloc extends Bloc<ApplanguageEvent, ApplanguageState> {
  ApplanguageBloc() : super(ApplanguageInitial()) {
    on<ApplanguageEvent>((event, emit) {
      if (event is InitalLanguageEvent) {
        if (sharedpreferences!.getString("lang") != null) {
          if (sharedpreferences!.getString("lang") == "ar") {
            emit(ChangeLanguage(applang: "ar"));
          } else {
            emit(ChangeLanguage(applang: "en"));
          }
        }
      } else if (event is ArabicLanguageEvent) {
        sharedpreferences!.setString("lang", "ar");
        emit(ChangeLanguage(applang: "ar"));
      } else if (event is EnglishLanguageEvent) {
        sharedpreferences!.setString("lang", "en");
        emit(ChangeLanguage(applang: "en"));
      }
    });
  }
}
