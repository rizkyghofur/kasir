import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';

class SelesaiPesanPage extends StatefulWidget {
  const SelesaiPesanPage({Key? key}) : super(key: key);

  @override
  State<SelesaiPesanPage> createState() => _SelesaiPesanPageState();
}

class _SelesaiPesanPageState extends State<SelesaiPesanPage> {
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
            children: const [],
          ),
        ),
      ),
    );
  }
}
