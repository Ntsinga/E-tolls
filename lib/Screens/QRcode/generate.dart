import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generate extends StatefulWidget {
  const Generate({Key? key}) : super(key: key);

  @override
  _GenerateState createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Generate'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            QrImage(
              data: controller.text,
              size: 200,
              backgroundColor: Colors.white,
            ),
            const SizedBox(
              height: 30,
            ),
            buildTextField(
              context,
            )
          ],
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: TextField(
          controller: controller,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          decoration: InputDecoration(
            hintText: 'Enter the data',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.green),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.green),
            ),
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.done,
                size: 30,
                color: Colors.green,
              ),
              onPressed: () => setState(() {}),
            ),
          ),
        ),
      );
}
