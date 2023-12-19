import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  String textValue;
  double textSize;
  FontWeight fontWeight;
  Color fontColor;
   CustomTextWidget({super.key,
  required this.textValue,
   this.textSize =15,
   this.fontWeight = FontWeight.w400,
   this.fontColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      textValue,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: textSize,
        color: fontColor,
      ),
      textAlign: TextAlign.center,
    );
  }
}