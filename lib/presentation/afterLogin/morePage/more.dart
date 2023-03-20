import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  child: const Text("abcd"),
                  onPressed: () => {},
                ),
                MaterialButton(
                  child: const Text("abcd"),
                  onPressed: () => {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  child: Container(
                    height: 50,
                    width: 100,
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8), 
                      color: const Color.fromRGBO(197, 248, 255, 1)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.settings_outlined),
                        Spacer(),
                        Text("Einstellungen"),
                      ] 
                    ),
                  ),
                  onPressed: () => {},
                ),
                MaterialButton(
                  child: const Text("Abmelden"),
                  onPressed: () => {},
                ),
              ],
            )
          ]),
    );
  }
}
