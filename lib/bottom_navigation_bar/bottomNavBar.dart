import 'package:flutter/material.dart';
import 'package:kami_bantu/bottom_navigation_bar/myticket.dart';
import 'package:kami_bantu/bottom_navigation_bar/home.dart';
import 'package:kami_bantu/bottom_navigation_bar/profile.dart';
import 'package:kami_bantu/bottom_navigation_bar/categori.dart';
import 'package:kami_bantu/bottom_navigation_bar/whistlist.dart';
import 'package:kami_bantu/config/appAssets.dart';
import 'package:kami_bantu/config/appColors.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<MyBottomNavBar> {
  // Future getData() async {
  //   final sp = context.read<SignInProvider>();
  //   sp.getDataFromSharedPreferences();
  // }

  @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }

  int myCurrentIndex = 0;
  List pages = const [
    HomePage(),
    MyticketPage(),
    Categori(),
    WhistlistPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: myCurrentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.text,
          unselectedItemColor: AppColors.grey,
          onTap: (index) {
            setState(() {
              myCurrentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: new Image.asset(
                  AppAssets.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: new Image.asset(
                  AppAssets.myticket,
                ),
                label: "My Ticket"),
            BottomNavigationBarItem(
                icon: new Image.asset(
                  AppAssets.categori,
                ),
                label: "Categori"),
            BottomNavigationBarItem(
                icon: new Image.asset(
                  AppAssets.love,
                ),
                label: "Whislist"),
            BottomNavigationBarItem(
                icon: new Image.asset(
                  AppAssets.profile,
                ),
                label: "Profile"),
          ]),
      body: pages[myCurrentIndex],
    );
  }
}
