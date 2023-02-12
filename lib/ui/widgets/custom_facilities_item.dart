import 'package:flutter/material.dart';
import 'package:flutter_findhouse/models/facilities.dart';
import '../../shared/themes.dart';

class CustomFacilitiesItem extends StatelessWidget {
  final Facilities facilities;

  CustomFacilitiesItem(this.facilities);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Image.asset(
          this.facilities.imgUrl,
          width: 30,
          height: 30,
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              '${this.facilities.item}',
              style: purpleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              this.facilities.title,
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
