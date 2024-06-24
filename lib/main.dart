import 'package:flutter/material.dart';
import 'package:kami_bantu/bottom_navigation_bar/bottomNavBar.dart';
// import 'package:kami_bantu/pages/splashPage.dart';

void main() async {
  // initialize the application
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyBottomNavBar(),
    );
  }
}
