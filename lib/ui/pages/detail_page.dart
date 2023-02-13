import 'package:flutter/material.dart';
import 'package:flutter_findhouse/models/facilities.dart';
import 'package:flutter_findhouse/models/space.dart';
import 'package:flutter_findhouse/ui/pages/error_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_findhouse/ui/widgets/custom_button.dart';
import 'package:flutter_findhouse/ui/widgets/custom_facilities_item.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../shared/themes.dart';

class DetailPage extends StatelessWidget {
  final Space space;

  DetailPage(this.space);

  @override
  Widget build(BuildContext context) {
    _launchURL(url) async {
      if (await canLaunchUrlString(url)) {
        await launchUrlString(url);
      } else {
        // throw 'Could not launch $url';
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }

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
                  this.space.name,
                  style: blackTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: semiBold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '\$${this.space.price}',
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
                  Facilities(
                    title: 'Kitchen',
                    imgUrl: 'assets/icon_kitchen.png',
                    item: this.space.numberOfKitchens,
                  ),
                ),
                CustomFacilitiesItem(
                  Facilities(
                    title: 'Bedroom',
                    imgUrl: 'assets/icon_bedroom.png',
                    item: this.space.numberOfBedRooms,
                  ),
                ),
                CustomFacilitiesItem(
                  Facilities(
                    title: 'Cupboard',
                    imgUrl: 'assets/icon_lemari.png',
                    item: this.space.numberOfCupboards,
                  ),
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
                children: this.space.photos.map(
                  (item) {
                    return Container(
                      margin: EdgeInsets.only(
                        top: 16,
                        right: 15,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        child: Image.network(
                          item,
                          width: 130,
                          height: 88,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ).toList(),
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
                  '${this.space.address} \n${this.space.city}, ${this.space.country}',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // _launchURL(
                    //     'https://www.google.com/maps/d/u/0/viewer?mid=1rhV4GjImlHrz7xSuoBil3mPFCBY&hl=en&ll=-7.794972035418176%2C110.36444149999998&z=16');
                    _launchURL('${this.space.mapUrl}');
                  },
                  child: Image.asset(
                    'assets/icon_location.png',
                    width: 40,
                  ),
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
          onPressed: () {
            _launchURL('tel://${this.space.phone}');
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Image.network(
            this.space.imageUrl,
            width: MediaQuery.of(context).size.width,
            height: 400,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
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
              SizedBox(
                height: 200,
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
