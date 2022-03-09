import 'package:flutter/material.dart';
import 'package:pembayaransekolah/components/appbar.dart';
import 'package:pembayaransekolah/services/constant.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Ukuran.appbarHeight),
        child: AppbarKR(title: "Pemberitahuan"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [0, 1, 2, 3].map((e) {
            return Container(
              decoration: BoxDecoration(
                  color: Warna.backgroundElementColor,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/icons/IC_BILL.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Text(
                            "Jatuh Tempo Pembayaran Iuran Wajib untuk bulan Mei 2021 pada tanggal 05/05/2021.",
                            style: TextStyle(color: Warna.textColor),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "1 hari yang lalu",
                      style: TextStyle(fontSize: 10, color: Color(0xff828282)),
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
