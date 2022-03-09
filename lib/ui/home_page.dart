import 'package:flutter/material.dart';
import 'package:pembayaransekolah/components/drawer.dart';
import 'package:pembayaransekolah/components/logo.dart';
import 'package:pembayaransekolah/services/constant.dart';
import 'package:pembayaransekolah/ui/notification_page.dart';
import 'package:pembayaransekolah/ui/transaction_history_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xffFBFBFB),
      drawer: DrawerKR(),
      appBar: AppBar(
        backgroundColor: Warna.primaryColor,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            icon: Image.asset("assets/icons/IC_MENU.png")),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => NotificationPage()));
              },
              icon: Image.asset("assets/icons/IC_NOTIFICATION_ACTIVE.png"))
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(175),
          child: Container(
            height: 175,
            padding: EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 25),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.bottomCenter,
                    image: AssetImage("assets/images/bg_header.png"))),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Logo(
                              width: 30,
                              height: 30,
                              borderWidth: 2,
                              fontSize: 16,
                              borderRadius: 7,
                              marginBottom: 0.0,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rp 200.000",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text("Total Saldo Saya",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400))
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                            color: Warna.secondaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Bayar Iuran",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Image.asset("assets/icons/IC_REFRESH_ADD.png")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Color(0xffF6F6F6)))),
                  padding: EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Iuran Wajib",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Rp 150.000",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Iuran Sukarela/Menabung",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Rp 150.000",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset("assets/icons/IC_BILL.png"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Tagihan Iuran",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Warna.textColor),
                                )
                              ],
                            ),
                          ),
                          Text(
                            "(Belum Dibayar)",
                            style: TextStyle(
                                color: Color(0xffFD3D00),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 76,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Iuran Wajib",
                                  style: TextStyle(
                                      color: Warna.textColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text("Bulan Mei 2021",
                                    style: TextStyle(
                                        color: Warna.textColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              "Rp 20.000",
                              style: TextStyle(
                                  color: Warna.primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset("assets/icons/IC_NEWS.png"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Berita",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Warna.textColor),
                                )
                              ],
                            ),
                          ),
                          Text(
                            "Lihat Semua",
                            style: TextStyle(
                                color: Warna.primaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 182,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 240,
                            height: 160,
                            margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                                color: Warna.backgroundElementColor),
                            child: Column(
                              children: [
                                Image.asset("assets/images/img_news.png"),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Text(
                                    "Pembayaran Iuran di Koperasi Bintang 9 bisa lewat Link Aja Syariah",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Warna.textColor),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset("assets/icons/IC_TRANSACTION.png"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Transaksi",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Warna.textColor),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) =>
                                          TransactionHistoryPage()));
                            },
                            child: Text(
                              "Lihat Semua",
                              style: TextStyle(
                                  color: Warna.primaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Column(
                        children: [0, 1, 2, 3].map((e) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(left: 15, top: 20),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                color: Warna.backgroundElementColor),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Iuran Wajib",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Warna.textColor),
                                          ),
                                          Text("Rp 20.000",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Warna.primaryColor))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Text("Pending",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Warna.textColor)),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 30,
                                  width: 100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Warna.secondaryColor,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10))),
                                  child: Text(
                                    "Detail Transaksi",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Warna.backgroundColor),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
