import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:kami_bantu/config/appAssets.dart';
import 'package:kami_bantu/config/appColors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kami_bantu/widgets/promoTerbatas.dart';
import 'package:kami_bantu/widgets/promoUnggulan.dart';
import 'package:kami_bantu/widgets/promocard.dart';
import 'package:kami_bantu/widgets/search.dart';
import 'package:kami_bantu/widgets/waletandkelas.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
final themeMode = ValueNotifier(2);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // final sp = context.read<SignInProvider>();
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
            //
            // MODUL Search Bar
            //
            child: SearchPromo(),
          ),
          // ignore: deprecated_member_use
          DView.spaceHeight(10),
          //
          // MODUL WALLET
          //
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Waletandkelas(),
              ],
            ),
          ),
          // ignore: deprecated_member_use
          DView.spaceHeight(15),
          //
          // MODUL PROMO
          //
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Container(
                height: 200,
                child: CarouselSlider(
                  options: CarouselOptions(),
                  items: imgList
                      .map((item) => Container(
                            child: Center(
                                child: Image.network(item,
                                    fit: BoxFit.cover, width: 1000)),
                          ))
                      .toList(),
                )),
          ),
          // ignore: deprecated_member_use
          DView.spaceHeight(15),
          //
          // MODUL MAIN PAGE ATAS
          //
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(AppAssets.events),
                    ),
                    Text("EVENT"),
                  ],
                ),
                // ignore: deprecated_member_use
                DView.spaceWidth(16),
                Column(
                  children: [
                    Container(
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(AppAssets.standup),
                    ),
                    Text("STANDUP"),
                  ],
                ),
                // ignore: deprecated_member_use
                DView.spaceWidth(16),
                Column(
                  children: [
                    Container(
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(AppAssets.olimpiade),
                    ),
                    Text("OMLIMPIADE"),
                  ],
                ),
                // ignore: deprecated_member_use
                DView.spaceWidth(16),
                Column(
                  children: [
                    Container(
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(AppAssets.kontes),
                    ),
                    Text("KONTES"),
                  ],
                ),
              ],
            ),
          ),
          // ignore: deprecated_member_use
          DView.spaceHeight(15),
          //
          // MODUL MAIN PAGE BAWAH
          //
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(AppAssets.ml),
                    ),
                    Text("ML"),
                  ],
                ),
                // ignore: deprecated_member_use
                DView.spaceWidth(16),
                Column(
                  children: [
                    Container(
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(AppAssets.pubg),
                    ),
                    Text("PUBG"),
                  ],
                ),
                // ignore: deprecated_member_use
                DView.spaceWidth(16),
                Column(
                  children: [
                    Container(
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(AppAssets.topup),
                    ),
                    Text("TOP-UP"),
                  ],
                ),
                // ignore: deprecated_member_use
                DView.spaceWidth(16),
                Column(
                  children: [
                    Container(
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(AppAssets.tagihan),
                    ),
                    Text("TAGIHAN"),
                  ],
                ),
              ],
            ),
          ),
          DView.spaceHeight(16),
          //
          // MODUL PROMO
          //
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: AppColors.grey),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset(
                    AppAssets.splash,
                    width: 120,
                    height: 160,
                  ),
                  // ignore: deprecated_member_use
                  DView.spaceWidth(15),
                  Promocard(),
                  // ignore: deprecated_member_use
                  DView.spaceWidth(15),
                  Promocard(),
                  // ignore: deprecated_member_use
                  DView.spaceWidth(15),
                  Promocard(),
                  // ignore: deprecated_member_use
                  DView.spaceWidth(15),
                  Promocard(),
                  // ignore: deprecated_member_use
                  DView.spaceWidth(15),
                  Promocard(),
                ],
              ),
            ),
          ),
          // ignore: deprecated_member_use
          DView.spaceHeight(15),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Text(
                  "Promo Unggulan",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.start,
                ),
                // ignore: deprecated_member_use
                DView.spaceHeight(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PromoUnggulan(),
                    // ignore: deprecated_member_use
                    DView.spaceWidth(20),
                    PromoUnggulan(),
                  ],
                ),
                // ignore: deprecated_member_use
                DView.spaceHeight(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PromoUnggulan(),
                    // ignore: deprecated_member_use
                    DView.spaceWidth(20),
                    PromoUnggulan(),
                  ],
                ),
              ],
            ),
          ),
          // ignore: deprecated_member_use
          DView.spaceHeight(15),
          Column(
            children: [
              Text(
                "Promo Terbatas",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.start,
              ),
              // ignore: deprecated_member_use
              DView.spaceHeight(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PromoTerbatas(),
                  // ignore: deprecated_member_use
                  DView.spaceWidth(20),
                  PromoTerbatas(),
                ],
              ),
              // ignore: deprecated_member_use
              DView.spaceHeight(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PromoTerbatas(),
                  // ignore: deprecated_member_use
                  DView.spaceWidth(20),
                  PromoTerbatas(),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
