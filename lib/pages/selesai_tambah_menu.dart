import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';
import 'package:kasir/pages/beranda.dart';
import 'package:kasir/widgets/bottompagewidget.dart';

class SelesaiTambahMenu extends StatefulWidget {
  const SelesaiTambahMenu({Key? key}) : super(key: key);

  @override
  State<SelesaiTambahMenu> createState() => _SelesaiTambahMenuState();
}

class _SelesaiTambahMenuState extends State<SelesaiTambahMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(
          Constants.secondColor,
        ),
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
              const Spacer(),
              Image.asset(
                'assets/images/selesai_pesan.png',
                width: 250,
                height: 250,
                fit: BoxFit.fill,
              ),
              const Spacer(),
              const Text(
                'Selamat',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Text(
                'Menu yang Anda masukkan telah berhasil disimpan',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.normal),
              ),
              const Spacer(),
              BottomPageWidget(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const BerandaPage(),
                      ),
                      (Route<dynamic> route) => false);
                },
                text: 'Oke',
              )
            ],
          ),
        ),
      ),
    );
  }
}
