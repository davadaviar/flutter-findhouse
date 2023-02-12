import 'package:flutter/material.dart';
import 'package:flutter_findhouse/ui/pages/home_page.dart';
import 'package:flutter_findhouse/ui/widgets/custom_button.dart';
import '../../shared/themes.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buttonHome() {
      return CustomButton(
        title: 'Back to Home',
        width: 210,
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
              (route) => false);
        },
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: 215,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/error.png',
                width: 300,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Where are you going?',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Seems like the page that you were \nrequested is already gone',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              buttonHome(),
            ],
          ),
        ),
      ),
    );
  }
}
