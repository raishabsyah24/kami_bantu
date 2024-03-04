import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kami_bantu/BottomNav/bottomNavBar.dart';
import 'package:kami_bantu/Pages/registerPage.dart';
import 'package:kami_bantu/Config/app_assets.dart';
import 'package:kami_bantu/Config/app_colors.dart';
import 'package:kami_bantu/Config/next_screen.dart';
import 'package:kami_bantu/firebase/internet_provider.dart';
import 'package:kami_bantu/firebase/sign_in_provider.dart';
import 'package:kami_bantu/BottomNav/bottomNavBar.dart';

import 'package:provider/provider.dart';
// ignore: unused_import

// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
// import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey _scafoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dasar,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // ignore: deprecated_member_use
              DView.spaceHeight(66),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => RoleStatusPage()));
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ],
              ),
              // ignore: deprecated_member_use
              DView.spaceHeight(40),
              Text(
                "Sign in now",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              DView.spaceHeight(16),
              Text(
                "Please sign in to continue our app",
                style: TextStyle(color: AppColors.grey, fontSize: 16),
              ),
              // ignore: deprecated_member_use
              DView.spaceHeight(24),
              TextField(
                // controller: _emailController,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.login),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.login),
                  ),
                  fillColor: AppColors.login,
                  filled: true,
                  hintText: "www.kami_bantu.com",
                  hintStyle: TextStyle(color: AppColors.grey),
                ),
              ),
              // ignore: deprecated_member_use
              DView.spaceHeight(24),
              TextField(
                obscureText: true,
                // controller: _passwordController,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.login),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.login),
                  ),
                  fillColor: AppColors.login,
                  filled: true,
                  hintText: "**********",
                  hintStyle: TextStyle(color: AppColors.grey),
                ),
              ),
              // ignore: deprecated_member_use
              DView.spaceHeight(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ForgotPassword()));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: AppColors.biru,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              // ignore: deprecated_member_use
              DView.spaceHeight(20),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: MediaQuery.of(context).size.width * .9,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.biru),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyBottomNavBar()));
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: AppColors.dasar,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't Have an account? "),
                  TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => RegisterPage()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: AppColors.biru),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // // handling google sigin in
  // Future handleGoogleSignIn() async {
  //   final sp = context.read<SignInProvider>();
  //   final ip = context.read<InternetProvider>();
  //   await ip.checkInternetConnection();

  //   if (ip.hasInternet == false) {
  //     openSnackBar(context, "Check Your Internet Connection", Colors.red);
  //     googleController.reset();
  //     facebookController.reset();
  //   } else {
  //     await sp.signInWithGoogle().then((value) {
  //       if (sp.hasError == true) {
  //         openSnackBar(context, sp.errorCode.toString(), Colors.red);
  //         googleController.reset();
  //       } else {
  //         // checking whether user exists or not
  //         sp.CheckUserExists().then((value) async {
  //           if (value == true) {
  //             //user exists
  //             await sp.getUserDataFromFireStore(sp.uid).then((value) => sp
  //                 .saveDataToSharedPreferences()
  //                 .then((value) => sp.setSignIn().then((value) {
  //                       googleController.success();
  //                       handleAfterSignIn();
  //                     })));
  //           } else {
  //             //user does not exist
  //             sp.saveDataToFirestore().then((value) => sp
  //                 .saveDataToSharedPreferences()
  //                 .then((value) => sp.setSignIn().then((value) {
  //                       googleController.success();
  //                       handleAfterSignIn();
  //                     })));
  //           }
  //         });
  //       }
  //     });
  //   }
  // }

  // //handling facebook auth
  // Future handleFacebookSignIn() async {
  //   final sp = context.read<SignInProvider>();
  //   final ip = context.read<InternetProvider>();
  //   await ip.checkInternetConnection();

  //   if (ip.hasInternet == false) {
  //     openSnackBar(context, "Check Your Internet Connection", Colors.red);
  //     googleController.reset();
  //     facebookController.reset();
  //   } else {
  //     await sp.signInWithFacebook().then((value) {
  //       if (sp.hasError == true) {
  //         openSnackBar(context, sp.errorCode.toString(), Colors.red);
  //         facebookController.reset();
  //       } else {
  //         // checking whether user exists or not
  //         sp.CheckUserExists().then((value) async {
  //           if (value == true) {
  //             //user exists
  //             await sp.getUserDataFromFireStore(sp.uid).then((value) => sp
  //                 .saveDataToSharedPreferences()
  //                 .then((value) => sp.setSignIn().then((value) {
  //                       facebookController.success();
  //                       handleAfterSignIn();
  //                     })));
  //           } else {
  //             //user does not exist
  //             sp.saveDataToFirestore().then((value) => sp
  //                 .saveDataToSharedPreferences()
  //                 .then((value) => sp.setSignIn().then((value) {
  //                       facebookController.success();
  //                       handleAfterSignIn();
  //                     })));
  //           }
  //         });
  //       }
  //     });
  //   }
  // }

  //handleAfterSignIn
  // handleAfterSignIn() {
  //   Future.delayed(const Duration(microseconds: 1000)).then((value) {
  //     nextScreenReplace(context, const MyBottomNavBar());
  //   });
  // }
}
