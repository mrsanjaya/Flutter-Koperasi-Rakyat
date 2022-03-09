import 'package:flutter/material.dart';
import 'package:pembayaransekolah/services/constant.dart';

class AppbarKR extends StatelessWidget {
  final String title;
  final bool centerTitle;
  const AppbarKR({Key? key, required this.title, this.centerTitle = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Warna.primaryColor,
      elevation: 0.0,
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
      centerTitle: centerTitle,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios)),
    );
  }
}
