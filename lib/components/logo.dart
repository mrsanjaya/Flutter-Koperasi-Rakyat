import 'package:flutter/material.dart';
import 'package:pembayaransekolah/services/constant.dart';

class Logo extends StatelessWidget {
  final double? height;
  final double? width;
  final double? fontSize;
  final double? marginBottom;
  final double? borderWidth;
  final double? borderRadius;
  const Logo(
      {Key? key,
      this.height = 100,
      this.width = 100,
      this.fontSize = 40,
      this.marginBottom = 12,
      this.borderWidth = 4,
      this.borderRadius = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: marginBottom!),
      decoration: BoxDecoration(
          color: Warna.primaryColor,
          border: Border.all(color: Warna.secondaryColor, width: borderWidth!),
          borderRadius: BorderRadius.circular(borderRadius!)),
      child: Text(
        "KR",
        style:
            TextStyle(fontSize: fontSize, color: Warna.backgroundElementColor),
      ),
    );
  }
}
