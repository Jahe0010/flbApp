import 'package:flb_app/presentation/afterLogin/afterLoginPage.dart';
import 'package:flb_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FLB-APP',
        theme: AppTheme.applicationTheme(),
        themeMode: ThemeMode.light,
        home: const afterLoginPage()
    );
  }
}