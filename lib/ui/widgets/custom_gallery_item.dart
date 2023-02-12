import 'package:flutter/material.dart';
import 'package:flutter_findhouse/models/gallery.dart';
import '../../shared/themes.dart';

class CustomGalleryItem extends StatelessWidget {

  final Gallery gallery;

  CustomGalleryItem(this.gallery);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 110,
      height: 88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        image: DecorationImage(
          image: AssetImage(this.gallery.imgUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
