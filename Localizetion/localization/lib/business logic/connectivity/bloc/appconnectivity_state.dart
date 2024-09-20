part of 'appconnectivity_bloc.dart';

@immutable
sealed class AppconnectivityState {}

final class AppconnectivityInitial extends AppconnectivityState {}

class AppConnectedState extends AppconnectivityState {
  final String? connect;
  AppConnectedState({this.connect});
}

class AppNotConnectedState extends AppconnectivityState {
  final String? connect;
  AppNotConnectedState({this.connect});
}
