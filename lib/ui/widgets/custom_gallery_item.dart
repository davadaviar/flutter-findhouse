import 'package:flutter/material.dart';
import '../../shared/themes.dart';

class CustomGalleryItem extends StatelessWidget {

  final String imgUrl;

  const CustomGalleryItem({Key ? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 110,
      height: 88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        image: DecorationImage(
          image: AssetImage(imgUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
