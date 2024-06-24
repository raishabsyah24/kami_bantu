import 'package:flutter/material.dart';

class WhistlistPage extends StatelessWidget {
  const WhistlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "This is a Whislist Page",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
