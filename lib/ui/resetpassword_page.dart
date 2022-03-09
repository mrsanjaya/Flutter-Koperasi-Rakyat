import 'package:flutter/material.dart';
import 'package:pembayaransekolah/components/logo.dart';
import 'package:pembayaransekolah/services/constant.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
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
                child: Text("Reset Password",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 200,
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
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
                      InkWell(
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              color: Warna.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child: Text(
                            "Kirim Link Reset",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
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
