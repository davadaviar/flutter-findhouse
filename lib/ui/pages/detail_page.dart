import 'package:flutter/material.dart';
import 'package:flutter_findhouse/ui/widgets/custom_facilities_item.dart';
import '../../shared/themes.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kuretakeso Hott',
                style: blackTextStyle.copyWith(
                  fontSize: 22,
                  fontWeight: semiBold,
                ),
              ),
              Row(
                children: [
                  Text(
                    '\$52',
                    style: purpleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    '/month',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              )
            ],
          ),
          Spacer(),
          Row(
            children: [
              Image.asset(
                'assets/icon_star.png',
                width: 20,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 20,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 20,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 20,
              ),
              Image.asset(
                'assets/icon_star_grey.png',
                width: 20,
              ),
            ],
          )
        ],
      );
    }

    ;

    Widget mainFacilities() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Main Facilities',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFacilitiesItem(
                  title: 'Kitchen',
                  imgUrl: 'assets/icon_kitchen.png',
                  item: '2',
                ),
                CustomFacilitiesItem(
                  title: 'Bedroom',
                  imgUrl: 'assets/icon_bedroom.png',
                  item: '3',
                ),
                CustomFacilitiesItem(
                  title: 'Cupboard',
                  imgUrl: 'assets/icon_lemari.png',
                  item: '3',
                ),
              ],
            )
          ],
        ),
      );
    }

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
          ListView(
            children: [
              SizedBox(
                height: 300,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: defaultMargin,
                    right: defaultMargin,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      header(),
                      mainFacilities(),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
