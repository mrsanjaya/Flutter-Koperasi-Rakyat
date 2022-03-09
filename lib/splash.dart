import 'package:flutter/material.dart';
import 'package:pembayaransekolah/services/constant.dart';
import 'package:pembayaransekolah/ui/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var delay = Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (ctx) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Warna.primaryColor,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                    border: Border.all(color: Warna.secondaryColor, width: 4),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "KR",
                  style: TextStyle(
                      fontSize: 40, color: Warna.backgroundElementColor),
                ),
              ),
              Text(
                "Koperasi Rakyat",
                style: TextStyle(
                    fontSize: 20, color: Warna.backgroundElementColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
