import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kami_bantu/bottom_navigation_bar/bottomNavBar.dart';
import 'package:kami_bantu/config/appAssets.dart';
import 'package:kami_bantu/config/appColors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // final sp = context.read<SignInProvider>();
    return Scaffold(
        body: Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // DView.spaceHeight(64),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 64, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyBottomNavBar()));
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                // ignore: deprecated_member_use
                DView.spaceWidth(115),
                Text(
                  "Profile",
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                // ignore: deprecated_member_use
                DView.spaceWidth(144),
              ],
            ),
          ),
          // ignore: deprecated_member_use
          DView.spaceHeight(24),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Container(
                  margin: EdgeInsets.only(top: 48),
                  height: 174,
                  width: 343,
                  decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 55),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.grey),
                        ),
                        // ignore: deprecated_member_use
                        DView.spaceHeight(14),
                        Text(
                          "",
                          style: GoogleFonts.roboto(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        // ignore: deprecated_member_use
                        DView.spaceHeight(9),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_on),
                                Text(
                                  "Alexandria, Egypt",
                                  style: GoogleFonts.roboto(fontSize: 10),
                                ),
                              ],
                            ),
                            // ignore: deprecated_member_use
                            DView.spaceWidth(38),
                            Text("|"),
                            // ignore: deprecated_member_use
                            DView.spaceWidth(38),
                            Row(
                              children: [
                                Icon(Icons.shopping_bag_rounded),
                                Text(
                                  "20 Task Completed",
                                  style: GoogleFonts.roboto(fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 12.0,
                          child: Icon(
                            Icons.camera_alt,
                            size: 15.0,
                            color: Color(0xFF404040),
                          ),
                        ),
                      ),
                      radius: 38.0,
                      backgroundImage: AssetImage(AppAssets.splash),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // ignore: deprecated_member_use
          DView.spaceHeight(16),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 45,
                width: 375,
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppAssets.splash,
                        height: 24,
                        width: 24,
                      ),
                      // ignore: deprecated_member_use
                      DView.spaceWidth(30),
                      Text("Profile Info",
                          style: GoogleFonts.roboto(fontSize: 16))
                    ],
                  ),
                )),
          ),
          // ignore: deprecated_member_use
          DView.spaceHeight(16),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 45,
                width: 375,
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppAssets.splash,
                        height: 24,
                        width: 24,
                      ),
                      // ignore: deprecated_member_use
                      DView.spaceWidth(30),
                      Text("Statistic", style: GoogleFonts.roboto(fontSize: 16))
                    ],
                  ),
                )),
          ),
          // ignore: deprecated_member_use
          DView.spaceHeight(16),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 45,
                width: 375,
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppAssets.splash,
                        height: 24,
                        width: 24,
                      ),
                      // ignore: deprecated_member_use
                      DView.spaceWidth(30),
                      Text("Languange", style: GoogleFonts.roboto(fontSize: 16))
                    ],
                  ),
                )),
          ),
          // ignore: deprecated_member_use
          DView.spaceHeight(16),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 45,
                width: 375,
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppAssets.splash,
                        height: 24,
                        width: 24,
                      ),
                      // ignore: deprecated_member_use
                      DView.spaceWidth(30),
                      Text("Setting", style: GoogleFonts.roboto(fontSize: 16))
                    ],
                  ),
                )),
          ),
          // ignore: deprecated_member_use
          DView.spaceHeight(16),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 45,
                width: 375,
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppAssets.splash,
                        height: 24,
                        width: 24,
                      ),
                      // ignore: deprecated_member_use
                      DView.spaceWidth(30),
                      Text("About", style: GoogleFonts.roboto(fontSize: 16))
                    ],
                  ),
                )),
          ),
          // ignore: deprecated_member_use
          DView.spaceHeight(16),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 45,
                width: 375,
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppAssets.splash,
                        height: 24,
                        width: 24,
                      ),
                      // ignore: deprecated_member_use
                      DView.spaceWidth(30),
                      Text("Logout", style: GoogleFonts.roboto(fontSize: 16))
                    ],
                  ),
                )),
          ),
        ],
      ),
    ));
  }

  // ignore: unused_element
  Stream<List<UserModel>> _readData() {
    final userCollection = FirebaseFirestore.instance.collection("users");

    return userCollection.snapshots().map((qureySnapshot) => qureySnapshot.docs
        .map(
          (e) => UserModel.fromSnapshot(e),
        )
        .toList());
  }

  // ignore: unused_element
  void _createData(UserModel userModel) {
    final userCollection = FirebaseFirestore.instance.collection("users");

    String id = userCollection.doc().id;

    final newUser = UserModel(
      username: userModel.username,
      age: userModel.age,
      adress: userModel.adress,
      id: id,
    ).toJson();

    userCollection.doc(id).set(newUser);
  }

  // ignore: unused_element
  void _updateData(UserModel userModel) {
    final userCollection = FirebaseFirestore.instance.collection("users");

    final newData = UserModel(
      username: userModel.username,
      id: userModel.id,
      adress: userModel.adress,
      age: userModel.age,
    ).toJson();

    userCollection.doc(userModel.id).update(newData);
  }

  // ignore: unused_element
  void _deleteData(String id) {
    final userCollection = FirebaseFirestore.instance.collection("users");

    userCollection.doc(id).delete();
  }
}

class UserModel {
  final String? username;
  final String? adress;
  final int? age;
  final String? id;

  UserModel({this.id, this.username, this.adress, this.age});

  static UserModel fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    return UserModel(
      username: snapshot['username'],
      adress: snapshot['adress'],
      age: snapshot['age'],
      id: snapshot['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "username": username,
      "age": age,
      "id": id,
      "adress": adress,
    };
  }
}
