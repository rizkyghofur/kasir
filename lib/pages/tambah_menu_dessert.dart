import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kasir/constants/constants.dart';
import 'package:kasir/pages/selesai_tambah_menu.dart';
import 'package:kasir/widgets/bottompagewidget.dart';
import 'package:kasir/widgets/custom_textformfield.dart';

class TambahMenuDessertPage extends StatefulWidget {
  const TambahMenuDessertPage({Key? key}) : super(key: key);

  @override
  State<TambahMenuDessertPage> createState() => _TambahMenuDessertPageState();
}

class _TambahMenuDessertPageState extends State<TambahMenuDessertPage> {
  final ImagePicker _picker = ImagePicker();
  File? imageFile;
  SimpleDialog? sd;

  void dialog() {
    sd = SimpleDialog(
      title: const Text(
        'Pilih salah satu',
        style: TextStyle(fontSize: 32),
      ),
      children: <Widget>[
        SimpleDialogOption(
          child: const Text(
            'Kamera',
            style: TextStyle(fontSize: 32),
          ),
          onPressed: () async {
            Navigator.of(context).pop();
            XFile? file = await _picker.pickImage(source: ImageSource.camera);
            setState(() {
              imageFile = File(file!.path);
            });
          },
        ),
        SimpleDialogOption(
          child: const Text(
            'Galeri',
            style: TextStyle(fontSize: 32),
          ),
          onPressed: () async {
            Navigator.of(context).pop();
            XFile? file = await _picker.pickImage(source: ImageSource.gallery);
            setState(() {
              imageFile = File(file!.path);
            });
          },
        ),
      ],
    );
    showDialog(
      context: context,
      builder: (context) {
        return Container(
          child: sd,
        );
      },
    );
  }

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
                                onPressed: () async {
                                  dialog();
                                },
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
                            child: imageFile == null
                                ? const Icon(
                                    Icons.camera_enhance,
                                    size: 75,
                                  )
                                : Image.file(
                                    imageFile!,
                                    fit: BoxFit.fill,
                                  ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                BottomPageWidget(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelesaiTambahMenu(),
                      ),
                    );
                  },
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
