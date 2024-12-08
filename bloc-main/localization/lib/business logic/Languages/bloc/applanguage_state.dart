part of 'applanguage_bloc.dart';

@immutable
sealed class ApplanguageState {}

final class ApplanguageInitial extends ApplanguageState {}

class ChangeLanguage extends ApplanguageState {
  final String? applang;
  ChangeLanguage({this.applang});
}
