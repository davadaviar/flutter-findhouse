import 'package:flutter/material.dart';
import '../../shared/themes.dart';

class CustomFacilitiesItem extends StatelessWidget {
  final String title;
  final String imgUrl;
  final String item;

  const CustomFacilitiesItem({
    Key? key,
    required this.title,
    required this.imgUrl,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Image.asset(
          imgUrl,
          width: 30,
          height: 30,
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              item,
              style: purpleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            )
          ],
        )
      ],
    );
  }
}
