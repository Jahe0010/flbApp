part of 'about_bloc.dart';

@immutable
abstract class AboutState {}

class AboutInitial extends AboutState {
  final entries;
  AboutInitial({required this.entries});
}
