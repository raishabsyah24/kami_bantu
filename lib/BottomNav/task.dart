import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kami_bantu/BottomNav/bottomNavBar.dart';
import 'package:kami_bantu/BottomNav/tab_bar/all.dart';
import 'package:kami_bantu/BottomNav/tab_bar/pending.dart';
import 'package:kami_bantu/BottomNav/tab_bar/in_proggres.dart';
import 'package:kami_bantu/BottomNav/tab_bar/finished.dart';
import 'package:kami_bantu/Config/app_assets.dart';
import 'package:kami_bantu/Config/app_colors.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
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
                    DView.spaceWidth(110),
                    Text(
                      "My Task",
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    DView.spaceWidth(92),
                    Image.asset(AppAssets.onboard_dua)
                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Padding(
                  padding: const EdgeInsets.only(left: 4, right: 4),
                  child: Container(
                    // height: 50,
                    width: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: AppColors.bar,
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TabBar(
                            unselectedLabelColor: AppColors.hitam,
                            labelColor: AppColors.dasar,
                            indicatorColor: Colors.white,
                            labelPadding: EdgeInsets.symmetric(horizontal: 10),
                            indicatorWeight: 2,
                            indicator: BoxDecoration(
                              color: AppColors.biru,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            controller: tabController,
                            tabs: [
                              Align(
                                child: Tab(
                                  text: 'All',
                                ),
                              ),
                              Align(
                                child: Tab(
                                  text: 'Pending',
                                ),
                              ),
                              Align(
                                child: Tab(
                                  text: 'In Progress',
                                ),
                              ),
                              Align(
                                child: Tab(
                                  text: 'Finished',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    All(),
                    Pending(),
                    InProgress(),
                    Finished(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
