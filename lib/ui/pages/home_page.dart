import 'package:flutter/material.dart';
import 'package:flutter_findhouse/models/city.dart';
import 'package:flutter_findhouse/models/space.dart';
import 'package:flutter_findhouse/models/tips.dart';
import 'package:flutter_findhouse/providers/space_provider.dart';
import 'package:flutter_findhouse/ui/widgets/custom_bottom_navbar.dart';
import 'package:flutter_findhouse/ui/widgets/custom_cities_card.dart';
import 'package:flutter_findhouse/ui/widgets/custom_space_card.dart';
import 'package:flutter_findhouse/ui/widgets/custom_tips_card.dart';
import 'package:provider/provider.dart';
import '../../shared/themes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    spaceProvider.getRecommendedSpace();

    Widget bodyContent() {
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
                      City(
                        id: 0,
                        name: 'Jakarta',
                        imgUrl: 'assets/city1.png',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CustomCitiesCard(
                      City(
                        id: 1,
                        name: 'Bandung',
                        imgUrl: 'assets/city2.png',
                        isSelected: true,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CustomCitiesCard(
                      City(
                        id: 2,
                        name: 'Surabaya',
                        imgUrl: 'assets/city3.png',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CustomCitiesCard(
                      City(
                        id: 3,
                        name: 'Pelembang',
                        imgUrl: 'assets/city4.png',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CustomCitiesCard(
                      City(
                        id: 4,
                        name: 'Bogor',
                        imgUrl: 'assets/city5.png',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CustomCitiesCard(
                      City(
                        id: 5,
                        name: 'Aceh',
                        imgUrl: 'assets/city6.png',
                      ),
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
          child: FutureBuilder(
            future: spaceProvider.getRecommendedSpace(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Space> data = snapshot.data;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: data.map((item) {
                    final int index = 0;

                    return Container(
                      margin: EdgeInsets.only(
                        top: index == 1 ? 0 : 30,
                      ),
                      child: CustomSpaceCard(item),
                    );
                  }).toList(),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        );
      }

      ;

      Widget tipsGuideline() {
        return Container(
          margin: EdgeInsets.only(
            top: 30,
            bottom: 130,
          ),
          padding: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tips & Guidance',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: regular,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CustomTipsCard(
                Tips(
                  title: 'City Guidelines',
                  subTitle: 'Updated 20 Apr',
                  imgUrl: 'assets/icon_city_guidelines.png',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTipsCard(
                Tips(
                  title: 'Jakarta Fairship',
                  subTitle: 'Updated 11 Dec',
                  imgUrl: 'assets/icon_jakarta_fairship.png',
                ),
              ),
            ],
          ),
        );
      }

      ;

      return ListView(
        children: [
          header(),
          citiesSlide(),
          recommendedSpace(),
          tipsGuideline(),
        ],
      );
    }

    Widget bottomNavbar() {
      return CustomBottomNavbar();
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            bodyContent(),
            bottomNavbar(),
          ],
        ),
      ),
    );
  }
}
