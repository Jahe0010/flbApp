import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileWidget extends StatefulWidget {
  final Map person;
  const ProfileWidget({super.key, required this.person});
  

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Uri _phoneLaunchUri(number) {
    return Uri(
      scheme: 'tel',
      path: number
    );
  }

  Uri _emailLaunchUri(mail) {
    return Uri(
      scheme: 'mailto',
      path: mail
    );
  }

  @override
  Widget build(BuildContext context) {
  return LimitedBox(
    child: Card(
      shadowColor: Colors.black,
      child: SizedBox(
        width: 150,
        child: Column(
          children: [
            Stack(
               children: [
                Container(
                  height: 70,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile_background.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 35.0, 8.0, 0.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile_placeholder.jpg"),
                      radius: 30
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3
                ),
              ],
            ),
            Center(
              child: Text(
                widget.person["name"],
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ), 
            const SizedBox(
              height: 3,
            ), 
            Center(
              child: Text(
              widget.person["position"],
              style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(
              height: 3,
            ), 
            Center(
              child: Text(
              widget.person["responsibility"],
              style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const Expanded(child: SizedBox(height: 1)),
            Container(
              height: 40,
              color: Colors.lightGreen[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(Icons.email_outlined),
                    tooltip: 'Email',
                    onPressed: () {
                      _launchUrl(_emailLaunchUri(widget.person["email"]));
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.call),
                    tooltip: 'Anrufen',
                    onPressed: () {
                      _launchUrl(_phoneLaunchUri(widget.person["phone"]));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
  );
  }
}