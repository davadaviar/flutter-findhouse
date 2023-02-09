import 'package:flutter/material.dart';
import '../../shared/themes.dart';

class CustomCitiesCard extends StatelessWidget {
  final String title;
  final String imgUrl;
  final bool isPopular;

  const CustomCitiesCard({
    Key? key,
    required this.title,
    required this.imgUrl,
    this.isPopular = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: 120,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            image:
                DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover),
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
        ),
        isPopular
            ? Container(
                margin: EdgeInsets.only(top: 15, left: 70),
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(defaultRadius),
                    bottomLeft: Radius.circular(defaultRadius),
                  ),
                ),
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_star.png'),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
