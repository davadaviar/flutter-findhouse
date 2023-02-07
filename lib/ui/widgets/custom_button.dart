import 'package:flutter/material.dart';
import '../../shared/themes.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;

  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shadowColor: primaryColor.withOpacity(0.5),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
