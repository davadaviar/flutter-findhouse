import 'package:flutter/material.dart';
import 'package:flutter_findhouse/providers/space_provider.dart';
import 'package:flutter_findhouse/ui/pages/detail_page.dart';
import 'package:flutter_findhouse/ui/pages/error_page.dart';
import 'package:flutter_findhouse/ui/pages/home_page.dart';
import 'package:flutter_findhouse/ui/pages/splash_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/home': (context) => HomePage(),
          '/detail': (context) => DetailPage(),
          '/error': (context) => ErrorPage(),
        },
      ),
    );
  }
}
