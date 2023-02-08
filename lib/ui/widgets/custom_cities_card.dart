import 'package:flutter/material.dart';
import '../../shared/themes.dart';

class CustomCitiesCard extends StatelessWidget {
  final String title;
  final String imgUrl;

  const CustomCitiesCard({
    Key? key,
    required this.title,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 120,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        image: DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 48,
          decoration: BoxDecoration(
            color: Color(0xffF6F7F8),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(defaultRadius),
              bottomRight: Radius.circular(defaultRadius),
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
