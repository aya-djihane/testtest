import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var media= MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: media.width,
        height: media.height,
        color: Colors.white,
      ),
    );
  }
}
