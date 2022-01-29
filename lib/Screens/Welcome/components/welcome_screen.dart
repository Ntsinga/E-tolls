// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:etolls/Screens/Welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.lime[50],
      appBar: AppBar(
        title: Text(
          'E-tolls',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Body(),
    );
  }
}
