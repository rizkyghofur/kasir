import 'package:flutter/material.dart';
import 'package:kasir/pages/intro_slider.dart';

void main() {
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
