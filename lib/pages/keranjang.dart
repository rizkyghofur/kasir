import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';
import 'package:kasir/pages/beranda.dart';
import 'package:kasir/pages/selesai_buat_pesanan.dart';
import 'package:kasir/widgets/bottompagewidget.dart';

class KeranjangPage extends StatefulWidget {
  const KeranjangPage({Key? key}) : super(key: key);

  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  @override
  Widget build(BuildContext context) {
    double fixedWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
          Constants.secondColor,
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const BerandaPage(),
                  ),
                  (Route<dynamic> route) => false);
            },
            icon: const Icon(Icons.home),
            color: Colors.black,
          )
        ],
        title: const Text(
          "Keranjang",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color(Constants.mainColor),
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 10),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Pesanan Anda",
                          style: TextStyle(fontSize: 48),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Table(
                          defaultColumnWidth: FixedColumnWidth(fixedWidth / 4),
                          border: const TableBorder(
                            horizontalInside: BorderSide(
                                width: 1.5,
                                color: Colors.black,
                                style: BorderStyle.solid),
                          ),
                          children: [
                            TableRow(
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      'Menu',
                                      style: TextStyle(fontSize: 36.0),
                                    )
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      'Jumlah',
                                      style: TextStyle(fontSize: 36.0),
                                    )
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      'Harga',
                                      style: TextStyle(fontSize: 36.0),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      'Javatpoint',
                                      style: TextStyle(fontSize: 24.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      'Flutter',
                                      style: TextStyle(fontSize: 24.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      '5*',
                                      style: TextStyle(fontSize: 24.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      'Javatpoint',
                                      style: TextStyle(fontSize: 24.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      'MySQL',
                                      style: TextStyle(fontSize: 24.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      '5*',
                                      style: TextStyle(fontSize: 24.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      'Javatpoint',
                                      style: TextStyle(fontSize: 24.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      'ReactJS',
                                      style: TextStyle(fontSize: 24.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      '5*',
                                      style: TextStyle(fontSize: 24.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Divider(
                          thickness: 3,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Total Harga',
                                style: TextStyle(
                                  fontSize: 36.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '10.000',
                                style: TextStyle(
                                  fontSize: 36.0,
                                  fontWeight: FontWeight.bold,
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
              BottomPageWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SelesaiBuatPesananPage(),
                    ),
                  );
                },
                text: 'Pesan',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
