import 'package:flutter/material.dart';
import 'package:pembayaransekolah/components/logo.dart';
import 'package:pembayaransekolah/services/constant.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
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
                child: Text("Ganti Password",
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
                            prefixIcon: Image.asset("assets/icons/IC_LOCK.png"),
                            hintText: "Password Baru",
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
                            hintText: "Ulangi Password Baru",
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
                            "Simpan",
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
