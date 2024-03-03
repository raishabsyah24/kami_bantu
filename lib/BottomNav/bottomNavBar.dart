import 'package:flutter/material.dart';
import 'package:kami_bantu/BottomNav/favorite.dart';
import 'package:kami_bantu/BottomNav/home.dart';
import 'package:kami_bantu/BottomNav/profile.dart';
import 'package:kami_bantu/BottomNav/task.dart';
import 'package:kami_bantu/Config/app_assets.dart';
import 'package:kami_bantu/Config/app_colors.dart';
import 'package:kami_bantu/firebase/sign_in_provider.dart';
import 'package:provider/provider.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<MyBottomNavBar> {
  Future getData() async {
    final sp = context.read<SignInProvider>();
    sp.getDataFromSharedPreferences();
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  int myCurrentIndex = 0;
  List pages = const [
    HomePage(),
    FavoritePage(),
    TabBarPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: myCurrentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.biru,
          unselectedItemColor: AppColors.grey,
          onTap: (index) {
            setState(() {
              myCurrentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: new Image.asset(
                  AppAssets.home_icon,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: new Image.asset(AppAssets.message_icon),
              label: "Find",
            ),
            BottomNavigationBarItem(
                icon: new Image.asset(AppAssets.task_icon), label: "Chats"),
            BottomNavigationBarItem(
                icon: new Image.asset(AppAssets.profile_icon),
                label: "Profile"),
          ]),
      body: pages[myCurrentIndex],
    );
  }
}
