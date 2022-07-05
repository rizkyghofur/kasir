import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';
import 'package:kasir/widgets/bottompagewidget.dart';
import 'package:kasir/widgets/custom_textformfield.dart';

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
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.9055,
            color: const Color(Constants.mainColor),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Nama Dessert",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomTextFormField(
                        keyboardType: TextInputType.text,
                        hintText: "Masukkan nama dessert",
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Harga",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomTextFormField(
                        keyboardType: TextInputType.number,
                        hintText: "Masukkan harga",
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Gambar",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    const Color(Constants.secondColor),
                                  ),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Upload File',
                                  style: TextStyle(
                                    fontSize: 32,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 275,
                            width: 275,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 7.5,
                                color: const Color(Constants.secondColor),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child: const Icon(
                              Icons.camera_enhance,
                              size: 75,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                BottomPageWidget(
                  onPressed: () {},
                  text: 'Simpan',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
