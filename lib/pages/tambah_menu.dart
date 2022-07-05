import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';
import 'package:kasir/pages/tambah_menu_dessert.dart';
import 'package:kasir/pages/tambah_menu_makanan.dart';
import 'package:kasir/pages/tambah_menu_minuman.dart';
import 'package:kasir/widgets/add_menu_widget.dart';
import 'package:kasir/widgets/bottompagewidget.dart';

class TambahMenuPage extends StatefulWidget {
  const TambahMenuPage({Key? key}) : super(key: key);

  @override
  State<TambahMenuPage> createState() => _TambahMenuPageState();
}

class _TambahMenuPageState extends State<TambahMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
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
          "Tambah Menu",
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
                      height: 80,
                    ),
                    AddMenuWidget(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TambahMenuMakananPage(),
                          ),
                        );
                      },
                      text: 'Makanan',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    AddMenuWidget(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TambahMenuMinumanPage(),
                          ),
                        );
                      },
                      text: 'Minuman',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    AddMenuWidget(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TambahMenuDessertPage(),
                          ),
                        );
                      },
                      text: 'Dessert',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Pilih kategori yang ingin ditambahkan ke dalam menu',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/images/6.jpg',
                      width: 350,
                      height: 175,
                      fit: BoxFit.fill,
                    )
                  ],
                ),
              ),
              BottomPageWidget(
                onPressed: () {},
                text: 'Selanjutnya',
              )
            ],
          ),
        ),
      ),
    );
  }
}
