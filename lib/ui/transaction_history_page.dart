import 'package:flutter/material.dart';
import 'package:pembayaransekolah/components/appbar.dart';
import 'package:pembayaransekolah/services/constant.dart';
import 'package:pembayaransekolah/ui/transaction_detail_page.dart';

class TransactionHistoryPage extends StatefulWidget {
  const TransactionHistoryPage({Key? key}) : super(key: key);

  @override
  State<TransactionHistoryPage> createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Ukuran.appbarHeight),
        child: AppbarKR(title: "Riwayat Transaksi"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: TabBar(
                controller: _tabController,
                unselectedLabelColor: Color(0xff979797),
                labelColor: Warna.primaryColor,
                indicatorColor: Warna.primaryColor,
                indicatorWeight: 5,
                tabs: [
                  Tab(
                    text: "Pending",
                  ),
                  Tab(
                    text: "Berhasil",
                  ),
                  Tab(
                    text: "Gagal",
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: Column(
                      children: [0, 1, 2, 3].map((e) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => TransactionDetailPage()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Warna.backgroundElementColor,
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.only(bottom: 10),
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          "assets/icons/IC_TRANSACTION.png"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Text(
                                          "Pembayaran Iuran Wajib bulan Mei 2021 sebesar Rp 25.000,-",
                                          style:
                                              TextStyle(color: Warna.textColor),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    "1 hari yang lalu",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff828282)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
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
                                    Image.asset(
                                        "assets/icons/IC_TRANSACTION.png"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      child: Text(
                                        "Pembayaran Iuran Wajib bulan Mei 2021 sebesar Rp 25.000,-",
                                        style:
                                            TextStyle(color: Warna.textColor),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "1 hari yang lalu",
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xff828282)),
                                ),
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
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
                                    Image.asset(
                                        "assets/icons/IC_TRANSACTION.png"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      child: Text(
                                        "Pembayaran Iuran Wajib bulan Mei 2021 sebesar Rp 25.000,-",
                                        style:
                                            TextStyle(color: Warna.textColor),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "1 hari yang lalu",
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xff828282)),
                                ),
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
