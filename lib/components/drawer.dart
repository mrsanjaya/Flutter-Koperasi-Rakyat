import 'package:flutter/material.dart';
import 'package:pembayaransekolah/services/constant.dart';

class DrawerKR extends StatefulWidget {
  const DrawerKR({Key? key}) : super(key: key);

  @override
  State<DrawerKR> createState() => _DrawerKRState();
}

class _DrawerKRState extends State<DrawerKR> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.white,
      padding: EdgeInsets.only(top: 50, left: 10, right: 15),
      child: Column(
        children: [
          Container(
            width: 150,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/IC_USER.png")),
                Text(
                  "Kartu Anggota",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Warna.textColor),
                )
              ],
            ),
          ),
          Container(
            width: 150,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/IC_BILL.png")),
                Text(
                  "Iuran Saya",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Warna.textColor),
                )
              ],
            ),
          ),
          Container(
            width: 150,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/IC_LOGOUT.png")),
                Text(
                  "Keluar Aplikasi",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Warna.textColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
