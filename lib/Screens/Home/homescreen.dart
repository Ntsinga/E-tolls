import 'package:etolls/Screens/QRcode/generate.dart';
import 'package:etolls/Screens/QRcode/scan.dart';
import 'package:etolls/Screens/components/buttons/rounded_buttons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.lime[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Home',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            RoundButton(
                text: 'Scan QR CODE',
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Scan()));
                },
                textcolor: Colors.black,
                color: Colors.green),
            RoundButton(
                text: 'Generate QR CODE',
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Generate()));
                },
                textcolor: Colors.black,
                color: Colors.green)
          ],
        ),
      ),
    );
  }
}
