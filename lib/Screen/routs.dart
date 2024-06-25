import 'package:flutter/material.dart';
import 'package:swiggyapp/Screen/spleshScreen.dart';


class Swiggy extends StatelessWidget {
  const Swiggy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => SplashScreen(),
      },
    );
  }
}
