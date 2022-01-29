import 'package:etolls/Screens/Login/login.dart';
import 'package:etolls/Screens/components/buttons/rounded_buttons.dart';
import 'package:etolls/Screens/components/checks/already_have%20_an_accountcheck.dart';
import 'package:etolls/Screens/components/inputfields/rounded_inputfield.dart';
import 'package:etolls/Screens/components/inputfields/rounded_password_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 80),
            const Text(
              'SIGNUP',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            RoundInputField(hintText: 'First Name', onChanged: (value) {}),
            RoundInputField(hintText: 'LastName', onChanged: (value) {}),
            RoundInputField(
                hintText: 'PhoneNumber',
                onChanged: (value) {},
                icon: Icons.phone),
            RoundedPasswordField(onChanged: (value) {}),
            RoundButton(
                text: 'SIGNUP',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                textcolor: Colors.black,
                color: Colors.green),
            AlreadyAccount(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              login: false,
            )
          ],
        ),
      ),
    );
  }
}
