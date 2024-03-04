import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:kami_bantu/BottomNav/bottomNavBar.dart';
import 'package:kami_bantu/Config/app_colors.dart';
import 'package:kami_bantu/Pages/loginPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                    onTap: () {},
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ],
              ),
              // ignore: deprecated_member_use
              DView.spaceHeight(40),
              Text(
                "Sign Up now",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              // ignore: deprecated_member_use
              DView.spaceHeight(16),
              Text(
                "Please sign in to continue our app",
                style: TextStyle(color: AppColors.button, fontSize: 16),
              ),
              // ignore: deprecated_member_use
              DView.spaceHeight(24),
              TextField(
                // controller: _emailController,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.background),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.background),
                  ),
                  fillColor: AppColors.background,
                  filled: true,
                  hintText: "www.kami_bantu.com",
                  hintStyle: TextStyle(color: AppColors.button),
                ),
              ),
              // ignore: deprecated_member_use
              DView.spaceHeight(24),
              TextField(
                obscureText: true,
                // controller: _passwordController,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.background),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.background),
                  ),
                  fillColor: AppColors.background,
                  filled: true,
                  hintText: "**********",
                  hintStyle: TextStyle(color: AppColors.button),
                ),
              ),
              // ignore: deprecated_member_use
              DView.spaceHeight(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: AppColors.button,
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
                    color: AppColors.button),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyBottomNavBar()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: AppColors.utama,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already Have an account? "),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: AppColors.button),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
