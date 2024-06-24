import 'package:flutter/material.dart';
import 'package:kami_bantu/bottom_navigation_bar/bottomNavBar.dart';

import 'package:kami_bantu/config/appAssets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.splash),
          fit: BoxFit.cover,
        ),
      ),
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyBottomNavBar()));
        },
      ),
    );
  }
}
