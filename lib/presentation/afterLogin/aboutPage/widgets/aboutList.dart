import 'package:flb_app/presentation/afterLogin/aboutPage/widgets/profileWidget.dart';
import 'package:flutter/material.dart';

class AboutList extends StatelessWidget {
  String title;
  List entries;
  AboutList({super.key, required this.title, required this.entries});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LimitedBox(
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal, 
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return ProfileWidget(person: entries[index]);
            }
          )
        ),
      ],
    );
  }
}
