part of 'applanguage_bloc.dart';

@immutable
sealed class ApplanguageEvent {}

class InitalLanguageEvent extends ApplanguageEvent {}

class ArabicLanguageEvent extends ApplanguageEvent {}

class EnglishLanguageEvent extends ApplanguageEvent {}
