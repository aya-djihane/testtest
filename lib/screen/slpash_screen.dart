import 'package:flutter/material.dart';
import 'package:testtest/widgets/custom_button.dart';

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
      body: Stack(
        children: [
          Container(
            width: media.width,
            height: media.height,
           decoration: const BoxDecoration(
             image:DecorationImage(image: AssetImage("images/SplashBG.png"),fit: BoxFit.fill

             )
           ),
          ),
          Positioned(
              bottom: 20,
              left: media.width/3,
              child: CustomButton(width: media.width/3,value: "Get Started",)),
        ],
      ),
    );
  }
}
