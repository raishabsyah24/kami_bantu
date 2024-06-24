import 'package:flutter/material.dart';

class MyticketPage extends StatelessWidget {
  const MyticketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "This is a My Ticket Page",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
