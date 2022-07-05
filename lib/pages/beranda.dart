import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';
import 'package:kasir/pages/dessert.dart';
import 'package:kasir/pages/makanan.dart';
import 'package:kasir/pages/minuman.dart';
import 'package:kasir/pages/tambah_menu.dart';
import 'package:kasir/widgets/bottompagewidget.dart';
import 'package:kasir/widgets/button_menu.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
          Constants.secondColor,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Colors.black,
          )
        ],
        title: const Text(
          "Beranda",
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
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonMenu(
                          title: 'Makanan',
                          icon: const Icon(Icons.restaurant, size: 30),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MakananPage(),
                              ),
                            );
                          },
                        ),
                        ButtonMenu(
                          title: 'Minuman',
                          icon: const Icon(
                            Icons.local_drink,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MinumanPage(),
                              ),
                            );
                          },
                        ),
                        ButtonMenu(
                          title: 'Dessert',
                          icon: const Icon(
                            Icons.cake,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DessertPage(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Pilih kategori transaksi untuk dipesan',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/images/pict_menu.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  ],
                ),
              ),
              BottomPageWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TambahMenuPage(),
                    ),
                  );
                },
                text: 'Tambah',
              )
            ],
          ),
        ),
      ),
    );
  }
}
