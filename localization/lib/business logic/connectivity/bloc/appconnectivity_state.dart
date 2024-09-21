part of 'appconnectivity_bloc.dart';

@immutable
sealed class AppconnectivityState {}

final class AppconnectivityInitial extends AppconnectivityState {}

class AppConnectedState extends AppconnectivityState {
  final String? internetmessage;
  AppConnectedState({this.internetmessage});
}

class AppNotConnectedState extends AppconnectivityState {
  final String? internetmessage;
  AppNotConnectedState({this.internetmessage});
}
