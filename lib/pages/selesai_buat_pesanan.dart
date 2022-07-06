import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';
import 'package:kasir/pages/beranda.dart';
import 'package:kasir/widgets/bottompagewidget.dart';

class SelesaiBuatPesananPage extends StatefulWidget {
  const SelesaiBuatPesananPage({Key? key}) : super(key: key);

  @override
  State<SelesaiBuatPesananPage> createState() => _SelesaiBuatPesananPageState();
}

class _SelesaiBuatPesananPageState extends State<SelesaiBuatPesananPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(
          Constants.secondColor,
        ),
        title: const Text(
          "Pesanan",
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
                'assets/images/5.png',
                width: 250,
                height: 250,
                fit: BoxFit.fill,
              ),
              const Spacer(),
              const Text(
                'Terima Kasih',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Text(
                'Pesanan Anda sedang disiapkan.\nMohon menunggu dengan sabar.',
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
