import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final  fontWeight;
  final Color color;
  final textAlign;


  const CustomText({
    Key key, this.text, this.textAlign, this.fontSize, this.fontWeight, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text( text, textAlign: textAlign, style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color ),);
  }
}