import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'about_event.dart';
part 'about_state.dart';

class AboutBloc extends Bloc<AboutEvent, AboutState> {
  static const entries = [
    {
      "name": "Jannick Heim",
      "position": "Jugendleiter",
      "responsibility": "Jugendleitung",
      "email": "jannickheim@yahoo.de",
      "phone": "01781484293"
    },
    {
      "name": "Jannick Heim",
      "position": "Jugendleiter",
      "responsibility": "Jugendleitung",
      "email": "jannickheim@yahoo.de",
      "phone": "01781484293"
    },
    {
      "name": "Jannick Heim",
      "position": "Jugendleiter",
      "responsibility": "Jugendleitung",
      "email": "jannickheim@yahoo.de",
      "phone": "01781484293"
    }
  ];
  AboutBloc() : super(AboutInitial(entries: entries)) {
    on<AboutEvent>((event, emit) {
      emit(AboutInitial(entries: entries));
    });
  }
}
