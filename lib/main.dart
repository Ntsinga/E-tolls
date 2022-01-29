// ignore_for_file: deprecated_member_use

import 'package:etolls/Screens/Welcome/components/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TollsApp());
}

class TollsApp extends StatelessWidget {
  const TollsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-tolls',
      theme: ThemeData(
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.lime[50],
      ),
      home: const WelcomeScreen(),
    );
  }
}
