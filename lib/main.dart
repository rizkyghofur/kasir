import 'package:flutter/material.dart';
import 'package:kasir/pages/intro_slider.dart';
import 'package:kasir/utils/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();

  runApp(
    MaterialApp(
      home: const IntroSliderPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Peaches',
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
