import 'package:flutter/material.dart';
import 'package:flutter_findhouse/ui/widgets/custom_cities_card.dart';
import '../../shared/themes.dart';

class HomePage extends StatelessWidget {
  const HomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore Now',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Mencari kosan yang cozy',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                  )
                ],
              ),
              Container(
                color: backgroundColor,
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular Cities',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: regular,
                      ),
                    ),
                    ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CustomCitiesCard(
                            title: 'Jakarta', imgUrl: 'assets/city1.png'),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
