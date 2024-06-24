import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:kami_bantu/config/appColors.dart';

class SearchPromo extends StatelessWidget {
  const SearchPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: 38,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.text),
                // color: AppColors.grey,
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: 'Search',
                  // labelText: 'Search',
                ),
              ),
            ),
          ),
          // ignore: deprecated_member_use
          DView.spaceWidth(12),
          Icon(Icons.message),
          // ignore: deprecated_member_use
          DView.spaceWidth(12),
          Icon(Icons.notifications),
          // ignore: deprecated_member_use
          DView.spaceWidth(12),
          Icon(Icons.shopping_basket)
        ],
      ),
    );
  }
}
