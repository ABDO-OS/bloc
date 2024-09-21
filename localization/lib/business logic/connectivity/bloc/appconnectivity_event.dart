part of 'appconnectivity_bloc.dart';

@immutable
sealed class AppconnectivityEvent {}

class ConnectEvent extends AppconnectivityEvent {}

class NotConnectedEvent extends AppconnectivityEvent {}
