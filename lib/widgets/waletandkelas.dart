import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:kami_bantu/config/appAssets.dart';
import 'package:kami_bantu/config/appColors.dart';

class Waletandkelas extends StatelessWidget {
  const Waletandkelas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.grey,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6,
            offset: Offset(4, 8), // Shadow position
          ),
        ],
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColors.text),
      ),
      child: Row(
        children: [
          // Wallet
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
            ),
            child: Row(
              children: [
                // ignore: deprecated_member_use
                DView.spaceWidth(),
                Image.asset(AppAssets.home),
                // ignore: deprecated_member_use
                DView.spaceWidth(4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Rp. 300.000",
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      "Top-Up E-Walet",
                      style: TextStyle(fontSize: 8),
                    ),
                  ],
                )
              ],
            ),
          ),
          // Member
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.symmetric(
                vertical: BorderSide(color: AppColors.text),
              ),
            ),
            child: Row(
              children: [
                // ignore: deprecated_member_use
                DView.spaceWidth(),
                Image.asset(AppAssets.home),
                // ignore: deprecated_member_use
                DView.spaceWidth(4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Rp. 300.000",
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      "Top-Up E-Walet",
                      style: TextStyle(fontSize: 8),
                    ),
                  ],
                )
              ],
            ),
          ),
          // Kelas
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.29,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            child: Row(
              children: [
                // ignore: deprecated_member_use
                DView.spaceWidth(),
                Image.asset(AppAssets.home),
                // ignore: deprecated_member_use
                DView.spaceWidth(4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Rp. 300.000",
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      "Top-Up E-Walet",
                      style: TextStyle(fontSize: 8),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
