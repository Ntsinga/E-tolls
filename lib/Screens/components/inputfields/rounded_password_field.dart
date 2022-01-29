import 'package:etolls/Screens/components/textcontainers/textfield.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({Key? key, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'Password',
          icon: Icon(Icons.lock, color: Colors.green),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.green,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
