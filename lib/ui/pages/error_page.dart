import 'package:flutter/material.dart';
import '../../shared/themes.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Text(
        'Error Page',
      ),
    );
  }
}
