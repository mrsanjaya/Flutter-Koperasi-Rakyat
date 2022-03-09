import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pembayaransekolah/components/appbar.dart';
import 'package:pembayaransekolah/components/logo.dart';
import 'package:pembayaransekolah/services/constant.dart';

class TransactionDetailPage extends StatefulWidget {
  const TransactionDetailPage({Key? key}) : super(key: key);

  @override
  State<TransactionDetailPage> createState() => _TransactionDetailPageState();
}

class _TransactionDetailPageState extends State<TransactionDetailPage>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation? _colorTween;
  int _status = 0;
  List<String> _statusText = [
    "Belum Dibayar",
    "Sedang dikonfirmasi",
    "Berhasil"
  ];
  @override
  void initState() {
    super.initState();
    Timer.periodic(new Duration(seconds: 2), (timer) {
      debugPrint(timer.tick.toString());
      setState(() {
        _status++;
      });
      if (_status >= 2) {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Ukuran.appbarHeight),
        child: AppbarKR(title: "Detail Transaksi"),
      ),
      body: Container(
        color: Color(0xffF6F6F6),
        child: Stack(
          children: [
            Container(
              height: 60,
              color: Warna.primaryColor,
            ),
            Positioned(
              top: 25,
              left: 20,
              right: 20,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  padding: EdgeInsets.only(top: 35, left: 10, right: 10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/subtract.png"))),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Color(0xffF5FFFA)),
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 100,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "No Transaksi",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text("Tanggal Transaksi",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400)),
                                  Text("Perihal",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400)),
                                  Text("Nominal",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("#210412001",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Warna.primaryColor)),
                                  Text("12/04/2021",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Warna.primaryColor)),
                                  Text("Iuran Wajib",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Warna.primaryColor)),
                                  Text("Rp 20.000",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Warna.primaryColor)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Status Transaksi",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Warna.textColor),
                              ),
                            ),
                            _status == 0
                                ? AnimatedOpacity(
                                    opacity: _status == 0 ? 1.0 : 0.0,
                                    duration: Duration(seconds: 5),
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE0E0E0),
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.check,
                                        size: 50,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                : Container(),
                            _status == 1
                                ? AnimatedOpacity(
                                    opacity: _status == 1 ? 1.0 : 0.0,
                                    duration: Duration(seconds: 5),
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Warna.secondaryColor,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.check,
                                        size: 50,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                : Container(),
                            _status == 2
                                ? AnimatedOpacity(
                                    opacity: _status == 2 ? 1.0 : 0.0,
                                    duration: Duration(seconds: 5),
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Warna.primaryColor,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.check,
                                        size: 50,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                : Container(),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Text("${_statusText[_status]}"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 400,
              left: 20,
              right: 20,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Transfer Rekening :",
                        style: TextStyle(
                            color: Warna.primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [0, 1].map((e) {
                          return Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                  width: 2, color: Color(0xffF6F6F6)),
                            )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Image.asset("assets/bank/mandiri.png"),
                                  width: 48,
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bank Mandiri",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text("030120202039",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                      Text("a.n Koperasi Bintang 9",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400))
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Image.asset("assets/icons/IC_COPY.png"),
                                      Text("Salin Nomor",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Warna.secondaryColor))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 600,
                left: 20,
                right: 20,
                child: Container(
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Warna.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Konfirmasi Pembayaran",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                )),
            Positioned(
              // top: 10,
              child: Align(
                alignment: Alignment.topCenter,
                child: Logo(
                  width: 50,
                  height: 50,
                  borderWidth: 2,
                  fontSize: 22,
                  borderRadius: 10,
                  marginBottom: 0.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
