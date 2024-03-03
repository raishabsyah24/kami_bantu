import 'package:flutter/material.dart';
import 'package:kami_bantu/Pages/loginPage.dart';
import 'package:kami_bantu/Components/color.dart';
import 'package:kami_bantu/Components/onboardingData.dart';
import 'package:kami_bantu/Config/app_colors.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = OnboardingData();
  final pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 44),
          body(),
          SizedBox(height: 28),
          buildDots(),
          SizedBox(height: 28),
          button(),
          SizedBox(height: 10),
          skip(),
          SizedBox(height: 103),
        ],
      ),
    );
  }

  //Body
  Widget body() {
    return Expanded(
      child: Center(
        child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemCount: controller.items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Images
                    Image.asset(controller.items[currentIndex].image),

                    const SizedBox(height: 15),
                    //Titles
                    Text(
                      controller.items[currentIndex].title,
                      style: const TextStyle(
                          fontSize: 20,
                          color: primaryColor,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),

                    //Description
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        controller.items[currentIndex].description,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }

  //Dots
  Widget buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          controller.items.length,
          (index) => AnimatedContainer(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: currentIndex == index ? primaryColor : Colors.grey,
              ),
              height: 7,
              width: currentIndex == index ? 46 : 13,
              duration: const Duration(milliseconds: 700))),
    );
  }

  //Button
  Widget button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width * .9,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: AppColors.biru),
      child: TextButton(
        onPressed: () {
          setState(() {
            currentIndex != controller.items.length - 1
                ? currentIndex++
                : Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
          });
        },
        child: Text(
          currentIndex == controller.items.length - 1 ? "Get started" : "Next",
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget skip() {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        child: Text(
          currentIndex == controller.items.length - 1 ? "" : "Skip",
          style: const TextStyle(
              color: AppColors.biru, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
