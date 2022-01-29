import 'package:etolls/Screens/Home/homescreen.dart';
import 'package:etolls/Screens/Signup/signup_screen.dart';
import 'package:etolls/Screens/components/buttons/rounded_buttons.dart';
import 'package:etolls/Screens/components/checks/already_have%20_an_accountcheck.dart';
import 'package:etolls/Screens/components/inputfields/rounded_inputfield.dart';
import 'package:etolls/Screens/components/inputfields/rounded_password_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.lime[50],
      body: SizedBox(
        width: double.infinity,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'LOGIN',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            RoundInputField(
              hintText: 'PhoneNumber',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundButton(
                text: 'LOGIN',
                color: Colors.green,
                textcolor: Colors.black,
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                }),
            AlreadyAccount(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
