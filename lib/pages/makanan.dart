import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';
import 'package:kasir/pages/keranjang.dart';
import 'package:kasir/widgets/bottompagewidget.dart';
import 'package:kasir/widgets/counter_widget.dart';

class MakananPage extends StatefulWidget {
  const MakananPage({Key? key}) : super(key: key);

  @override
  State<MakananPage> createState() => _MakananPageState();
}

class _MakananPageState extends State<MakananPage> {
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const KeranjangPage(),
                ),
              );
            },
            icon: const Icon(Icons.shopping_cart),
            color: Colors.black,
          )
        ],
        title: const Text(
          "Makanan",
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
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Add',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                          CounterWidget()
                        ],
                      ),
                    );
                  },
                ),
              ),
              BottomPageWidget(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KeranjangPage(),
                      ),
                    );
                  },
                  text: 'Keranjang')
            ],
          ),
        ),
      ),
    );
  }
}
