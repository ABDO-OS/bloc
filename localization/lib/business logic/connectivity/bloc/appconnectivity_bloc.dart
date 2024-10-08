import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';

part 'appconnectivity_event.dart';
part 'appconnectivity_state.dart';

class AppconnectivityBloc
    extends Bloc<AppconnectivityEvent, AppconnectivityState> {
  StreamSubscription? streamSubscription;
  AppconnectivityBloc() : super(AppconnectivityInitial()) {
    on<AppconnectivityEvent>((event, emit) {
      switch (AppconnectivityEvent) {
        case ConnectEvent:
          emit(AppConnectedState(internetmessage: "Internet is Connectted"));
          break;

        case NotConnectedEvent:
          emit(
              AppConnectedState(internetmessage: "Internet is Not Connectted"));
          break;

        // default:
      }

      // if (event is ConnectEvent) {
      //   emit(AppConnectedState(internetmessage: "Internet is Connectted"));
      // } else {
      //   emit(AppNotConnectedState(
      //       internetmessage: "Internet is Not Connectted"));
      // }
    });

    streamSubscription = Connectivity().onConnectivityChanged.listen((value) {
      if (value == ConnectivityResult.mobile ||
          value == ConnectivityResult.wifi) {
        add(ConnectEvent());
      } else {
        add(NotConnectedEvent());
      }
    });
  }
  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
