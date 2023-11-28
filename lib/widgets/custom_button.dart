import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:testtest/AppColors.dart';

class CustomButton extends StatefulWidget {
  double? width;
  String value;
   CustomButton({required this.width,required this.value,Key? key}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: 50,
        decoration: ShapeDecoration(
        color: AppColors.ButtonColor.withOpacity(.6),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
   ),
    child:Center(
      child: Text(
        widget.value,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Glassio',
            fontWeight: FontWeight.w600,
      ) ,
      ),
    ));
  }
}
