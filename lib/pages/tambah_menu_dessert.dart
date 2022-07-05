import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';
import 'package:kasir/widgets/add_menu_widget.dart';
import 'package:kasir/widgets/bottompagewidget.dart';

class TambahMenuDessertPage extends StatefulWidget {
  const TambahMenuDessertPage({Key? key}) : super(key: key);

  @override
  State<TambahMenuDessertPage> createState() => _TambahMenuDessertPageState();
}

class _TambahMenuDessertPageState extends State<TambahMenuDessertPage> {
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
                    AddMenuWidget(onPressed: () {}, text: 'Makanan'),
                    const SizedBox(
                      height: 25,
                    ),
                    AddMenuWidget(onPressed: () {}, text: 'Minuman'),
                    const SizedBox(
                      height: 25,
                    ),
                    AddMenuWidget(onPressed: () {}, text: 'Dessert'),
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
