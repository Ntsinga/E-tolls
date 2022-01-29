import 'package:etolls/Screens/Login/login.dart';
import 'package:etolls/Screens/Signup/signup_screen.dart';
import 'package:etolls/Screens/components/buttons/rounded_buttons.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Center(
          child: Column(children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Welcome to E-tolls',
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            Image.asset(
              "assets/images/etolls.jpg",
              height: size.height * 0.5,
            ),
            SizedBox(
              height: size.height * 0.005,
            ),
            RoundButton(
              text: 'LOGIN',
              color: Colors.green,
              textcolor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            RoundButton(
              color: Colors.green,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              text: 'SIGNUP',
              textcolor: Colors.black,
            ),
          ]),
        ),
      ),
    );
  }
}
