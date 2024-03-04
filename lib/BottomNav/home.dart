import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kami_bantu/Config/app_assets.dart';
import 'package:kami_bantu/Config/app_colors.dart';
import 'package:kami_bantu/firebase/sign_in_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final sp = context.read<SignInProvider>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 64, left: 16, right: 16),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("${sp.imageUrl}"),
                  backgroundColor: AppColors.button,
                ),
                // ignore: deprecated_member_use
                DView.spaceWidth(47),
                Image(image: AssetImage(AppAssets.onboard_dua)),
                // ignore: deprecated_member_use
                DView.spaceWidth(47),
                Image(
                  image: AssetImage(AppAssets.onboard_dua),
                  height: 26.15,
                  width: 21.9,
                ),
                // ignore: deprecated_member_use
                DView.spaceHeight(16),
                Image(
                  image: AssetImage(AppAssets.onboard_dua),
                  height: 24,
                  width: 24,
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 164,
                    width: 322,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: AppColors.background,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 20.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            5.0, // Move to right 5  horizontally
                            5.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Attendance"),
                            Text("The 25 May"),
                            Text("10:15:00"),
                          ],
                        ),
                      ),
                      Text(
                        'Good Morning ${sp.name}, You Have Not\nCheck In yet. Have a good day',
                        style: GoogleFonts.roboto(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        width: 290,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.button),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Check In / Out",
                            style: TextStyle(
                                color: AppColors.background,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
            // ignore: deprecated_member_use
            DView.spaceHeight(20),
          ]),
        ),
      ),
    );
  }
}
