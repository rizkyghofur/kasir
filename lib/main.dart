import 'package:flutter/material.dart';
import 'package:kasir/pages/beranda.dart';
import 'package:kasir/pages/intro_slider.dart';
import 'package:kasir/utils/locator.dart';
import 'package:kasir/utils/preferences_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await baseDio();
  await setupLocator();
  PreferencesUtil util = PreferencesUtil();

  runApp(
    MaterialApp(
      home: util.isKeyExists(PreferencesUtil.pass)!
          ? const BerandaPage()
          : const IntroSliderPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Peaches',
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
