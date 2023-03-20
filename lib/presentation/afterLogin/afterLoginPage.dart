import 'package:flb_app/presentation/afterLogin/aboutPage/about.dart';
import 'package:flb_app/presentation/afterLogin/calendarPage/calendar.dart';
import 'package:flb_app/presentation/afterLogin/morePage/more.dart';
import 'package:flb_app/presentation/afterLogin/newsPage/newsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class afterLoginPage extends StatefulWidget {
  const afterLoginPage({ super.key });

  @override
  _AfterLoginPageState createState() => _AfterLoginPageState();
}

class _AfterLoginPageState extends State<afterLoginPage> {
  int _selectedIndex = 0;

  void _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          "FLB-APP",
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IndexedStack(
            index: _selectedIndex,
            children: const [
              NewsPage(),
              CalendarPage(),
              AboutPage(),
              MorePage(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_outlined),
            label: 'Neuigkeiten',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Kalender',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outlined),
            label: 'Verein',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Weitere',
          ),
        ],
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed, 
        selectedItemColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
        unselectedItemColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
        backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      )
    );
  }
}