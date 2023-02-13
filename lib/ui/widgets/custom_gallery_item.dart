import 'package:flutter/material.dart';
import 'package:flutter_findhouse/models/space.dart';
import '../../shared/themes.dart';

class CustomGalleryItem extends StatelessWidget {
  final Space space;

  CustomGalleryItem(this.space);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 110,
      height: 88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        image: DecorationImage(
          image: NetworkImage('${this.space.photos}'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
