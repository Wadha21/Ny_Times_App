import 'package:flutter/material.dart';

class TextLabelWidget extends StatelessWidget {
  const TextLabelWidget({
    super.key,
    required this.text,
    this.fontSize = 12,
    this.fontWeight = FontWeight.w300,
    this.maxLine = 2,
    this.color = Colors.black,
    this.textAlign = TextAlign.left,
  });
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int maxLine;
  final Color? color;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
    );
  }
}
