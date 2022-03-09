import 'package:flutter/material.dart';
import 'package:pembayaransekolah/components/logo.dart';
import 'package:pembayaransekolah/services/constant.dart';
import 'package:pembayaransekolah/ui/home_page.dart';
import 'package:pembayaransekolah/ui/resetpassword_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // backgroundColor: Warna.primaryColor,
      // ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Logo(),
              ),
              Container(
                child: Text(
                  "Selamat Datang di",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                child: Text("Koperasi Rakyat",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 300,
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        // margin: EdgeInsets.only(bottom: 25),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Image.asset("assets/icons/IC_MAIL.png"),
                            hintText: "Masukkan Email Anda",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(79, 79, 79, .4),
                                fontSize: 14),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Image.asset("assets/icons/IC_LOCK.png"),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(79, 79, 79, .4),
                                fontSize: 14),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => HomePage()));
                        },
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              color: Warna.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child: Text(
                            "Masuk",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => ResetPasswordPage()));
                        },
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Lupa Password?",
                            style: TextStyle(
                                color: Warna.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
