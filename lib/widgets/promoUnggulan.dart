import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:kami_bantu/config/appAssets.dart';
import 'package:kami_bantu/config/appColors.dart';

class PromoUnggulan extends StatelessWidget {
  const PromoUnggulan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.text),
        borderRadius: BorderRadius.circular(8),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(color: AppColors.text),
              child: Image.asset(
                AppAssets.events,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(color: AppColors.grey),
                child: Text("hellow")),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Rp. 20000",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  // ignore: deprecated_member_use
                  DView.spaceWidth(2),
                  Text(
                    "Rp. 20000",
                    style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
