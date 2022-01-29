import 'package:etolls/Screens/components/textcontainers/textfield.dart';
import 'package:flutter/material.dart';

class RoundInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundInputField(
      {Key? key,
      required this.hintText,
      this.icon = Icons.person,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: Colors.green,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
