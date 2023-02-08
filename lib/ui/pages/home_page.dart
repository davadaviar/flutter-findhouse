import 'package:flutter/material.dart';
import 'package:flutter_findhouse/ui/widgets/custom_cities_card.dart';
import 'package:flutter_findhouse/ui/widgets/custom_space_card.dart';
import '../../shared/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
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
      );
    }

    ;

    Widget citiesSlide() {
      return Container(
        margin: EdgeInsets.only(
          top: 16,
          left: defaultMargin,
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCitiesCard(
                    title: 'Jakarta',
                    imgUrl: 'assets/city1.png',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomCitiesCard(
                    title: 'Bandung',
                    imgUrl: 'assets/city2.png',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomCitiesCard(
                    title: 'Surabaya',
                    imgUrl: 'assets/city3.png',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomCitiesCard(
                    title: 'Pelembang',
                    imgUrl: 'assets/city4.png',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomCitiesCard(
                    title: 'Aceh',
                    imgUrl: 'assets/city5.png',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomCitiesCard(
                    title: 'Bogor',
                    imgUrl: 'assets/city6.png',
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    ;

    Widget recommendedSpace() {
      return Padding(
        padding: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recommended Space',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CustomSpaceCard(
              title: 'Kuretakeso Hott',
              imgUrl: 'assets/space1.png',
              price: '\$52',
              city: 'Bandung, Indonesia',
              rate: 4.5,
            ),
            SizedBox(
              height: 30,
            ),
            CustomSpaceCard(
              title: 'Roemah Ayang',
              imgUrl: 'assets/space2.png',
              price: '\$80',
              city: 'Semarang, Indonesia',
              rate: 5.0,
            ),
            SizedBox(
              height: 30,
            ),
            CustomSpaceCard(
              title: 'Cangkrukan Mbah Min',
              imgUrl: 'assets/space3.png',
              price: '\$60',
              city: 'Bogor, Indonesia',
              rate: 4.8,
            ),
          ],
        ),
      );
    }

    ;

    Widget tipsGuideline() {
      return Container();
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            citiesSlide(),
            recommendedSpace(),
            tipsGuideline(),
          ],
        ),
      ),
    );
  }
}
