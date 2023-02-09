import 'package:flutter/material.dart';
import '../../shared/themes.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Image.asset(
            'assets/thumbnail.png',
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 50,
              horizontal: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/btn_back.png',
                    width: 50,
                  ),
                ),
                Image.asset(
                  'assets/btn_wishlist.png',
                  width: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
