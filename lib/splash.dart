import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kami_bantu/Pages/onBoarding.dart';
import 'package:kami_bantu/Config/app_assets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _goHome();
  }

  _goHome() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnboardingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.onboard_dua),
          fit: BoxFit.cover,
        ),
      ),
      child: Image.asset(AppAssets.onboard_dua),
    );
  }
}
