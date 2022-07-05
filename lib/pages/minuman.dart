import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';
import 'package:kasir/widgets/bottompagewidget.dart';

class MinumanPage extends StatefulWidget {
  const MinumanPage({Key? key}) : super(key: key);

  @override
  State<MinumanPage> createState() => _MinumanPageState();
}

class _MinumanPageState extends State<MinumanPage> {
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
          "Minuman",
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
                child: Container(),
              ),
              BottomPageWidget(onPressed: (){}, text: 'Keranjang')
            ],
          ),
        ),
      ),
    );
  }
}
