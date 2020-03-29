import './screens/start_screens/login.dart';
import 'screens/start_screens/welcome.dart';
import 'package:flutter/material.dart';
import './screens/home.dart';
import './utils/main_theme.dart';

void main() => runApp(BenoStore());

class BenoStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      color: Colors.white,
    debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: mainTheme,
      home: Welcome(),
    );
  }
}