part of 'about_bloc.dart';

@immutable
abstract class AboutEvent {}

/// loadPerson data
class PersonRequestEvent extends AboutEvent {}