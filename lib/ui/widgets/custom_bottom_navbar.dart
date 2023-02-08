import 'package:flutter/material.dart';
import 'package:flutter_findhouse/ui/widgets/custom_bottom_navbar_item.dart';
import '../../shared/themes.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        width: 370,
        height: 65,
        decoration: BoxDecoration(
          color: Color(0xffF2F2F2),
          borderRadius: BorderRadius.circular(23),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 30,
              offset: Offset(0, 10),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomBottomNavbarItem(
              imgUrl: 'assets/icon_home.png',
              isSelected: true,
            ),
            CustomBottomNavbarItem(
              imgUrl: 'assets/icon_message.png',
            ),
            CustomBottomNavbarItem(
              imgUrl: 'assets/icon_card.png',
            ),
            CustomBottomNavbarItem(
              imgUrl: 'assets/icon_love.png',
            ),
          ],
        ),
      ),
    );
  }
}
