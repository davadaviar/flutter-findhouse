import 'package:flutter/material.dart';
import '../../shared/themes.dart';

class CustomBottomNavbarItem extends StatelessWidget {
  final String imgUrl;
  final bool isSelected;

  const CustomBottomNavbarItem({
    Key? key,
    required this.imgUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Image.asset(
          imgUrl,
          width: 30,
          height: 30,
        ),
        Container(
          width: 30,
          height: 4,
          decoration: BoxDecoration(
            color: isSelected ? secondaryColor : transparentColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        )
      ],
    );
  }
}
