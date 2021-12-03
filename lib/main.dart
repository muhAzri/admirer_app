import 'package:admirer_app/ui/pages/home_page.dart';
import 'package:admirer_app/ui/pages/splash_page.dart';
import 'package:admirer_app/ui/pages/write_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/home-page': (context) => HomePage(),
        '/write-page': (context) => WritePage(),
      },
    );
  }
}
