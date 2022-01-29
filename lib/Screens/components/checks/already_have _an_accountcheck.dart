import 'package:flutter/material.dart';

class AlreadyAccount extends StatelessWidget {
  final bool login;
  final Function() press;
  const AlreadyAccount({Key? key, this.login = true, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an account?" : "Already have an account?",
          style: const TextStyle(color: Colors.black, fontSize: 15),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Sign Up' : 'Sign In',
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        )
      ],
    );
  }
}
