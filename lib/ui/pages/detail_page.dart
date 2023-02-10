import 'package:flutter/material.dart';
import 'package:flutter_findhouse/ui/widgets/custom_button.dart';
import 'package:flutter_findhouse/ui/widgets/custom_facilities_item.dart';
import 'package:flutter_findhouse/ui/widgets/custom_gallery_item.dart';
import '../../shared/themes.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: EdgeInsets.only(
          top: 20,
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: Row(
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
        ),
      );
    }

    ;

    Widget mainFacilities() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
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

    ;

    Widget detailGellery() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Photos',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomGalleryItem(
                    imgUrl: 'assets/photo1.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CustomGalleryItem(
                    imgUrl: 'assets/photo2.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CustomGalleryItem(
                    imgUrl: 'assets/photo3.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CustomGalleryItem(
                    imgUrl: 'assets/photo4.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CustomGalleryItem(
                    imgUrl: 'assets/photo5.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    ;

    Widget detailLocation() {
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
              'Location',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jln. Kappan Sukses No. 20, \nPalembang',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                ),
                Image.asset(
                  'assets/icon_location.png',
                  width: 40,
                )
              ],
            )
          ],
        ),
      );
    }

    ;

    Widget bookingButton() {
      return Padding(
        padding: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 60,
        ),
        child: CustomButton(
          title: 'Book Now',
          width: 380,
          onPressed: () {},
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(),
                    mainFacilities(),
                    detailGellery(),
                    detailLocation(),
                    bookingButton(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
