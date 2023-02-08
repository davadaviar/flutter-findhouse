import 'package:flutter/material.dart';
import '../../shared/themes.dart';

class CustomTipsCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imgUrl;

  const CustomTipsCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgUrl),
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                subTitle,
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              )
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_right,
            ),
          ),
        ],
      ),
    );
  }
}
