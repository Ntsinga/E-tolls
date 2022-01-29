// ignore_for_file: deprecated_member_use,
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color, textcolor;
  const RoundButton({
    Key? key,
    required this.text,
    required this.press,
    required this.textcolor,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      height: size.height * 0.1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: color),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textcolor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
