import 'dart:async';

import 'package:flutter/material.dart';

import 'QuoteScreen.dart';
import 'addlocation.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState()
  {
    Timer(Duration(seconds: 3),()
    {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Addlocation(),));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 220,
          width: 220,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(
              'Assest/Swiggy-Emblem.png',
            ),
          ),
        ),
      ),
    );
  }
}