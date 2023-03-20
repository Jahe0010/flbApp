import 'package:flb_app/application/aboutPage/bloc/about_bloc.dart';
import 'package:flb_app/presentation/afterLogin/aboutPage/widgets/aboutList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  static final aboutBlock = AboutBloc();
  @override
  Widget build(BuildContext context) {
    double _height = 400 * 2;
    return SizedBox(
      height: _height,
      child: BlocBuilder<AboutBloc, AboutState>(
        bloc: aboutBlock,
        builder: (context, aboutState) {
          if(aboutState is AboutInitial){
            return Column(
              children: [
                AboutList(title: "Vorstand", entries: aboutState.entries),
                const SizedBox(height: 5),
                AboutList(title: "Ausschuss", entries: aboutState.entries),
                const SizedBox(height: 5),
              ],
            ); 
          }
        },
      ),
    );
  }
}
