import 'package:flutter/material.dart';
import 'package:flutter_findhouse/models/space.dart';
import 'package:flutter_findhouse/ui/pages/detail_page.dart';
import '../../shared/themes.dart';

class CustomSpaceCard extends StatelessWidget {
  final Space space;

  CustomSpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(space),
          ),
        );
      },
      child: Container(
        child: Row(
          children: [
            Container(
              width: 130,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                  image: NetworkImage(this.space.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(defaultRadius),
                      bottomLeft: Radius.circular(defaultRadius),
                    ),
                    color: primaryColor,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon_star.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '${this.space.rating}/5',
                          style: whiteTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.space.name,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$${this.space.price}',
                        style: purpleTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '/ month',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    this.space.city,
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
