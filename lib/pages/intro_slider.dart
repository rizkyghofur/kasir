import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:kasir/constants/constants.dart';
import 'package:kasir/models/intro_slider_model.dart';
import 'package:kasir/pages/beranda.dart';
import 'package:kasir/utils/preferences_util.dart';

class IntroSliderPage extends StatefulWidget {
  const IntroSliderPage({Key? key}) : super(key: key);

  @override
  State<IntroSliderPage> createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  final PageController _pageController = PageController();
  PreferencesUtil util = PreferencesUtil();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(Constants.mainColor),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 50, 50, 150),
          child: OnBoard(
            onBoardData: IntroSliderModel.onBoardData,
            pageController: _pageController,
            imageHeight: 150,
            imageWidth: 150,
            skipButton: Container(),
            titleStyles: const TextStyle(
              color: Colors.black,
              fontSize: 58,
              fontWeight: FontWeight.bold,
            ),
            descriptionStyles: const TextStyle(
              color: Colors.black,
              fontSize: 36,
            ),
            nextButton: ElevatedButton(
              onPressed: () {
                util.putString(PreferencesUtil.pass, "pass");
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const BerandaPage()),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(Constants.secondColor),
              ),
              child: const SizedBox(
                width: 150,
                height: 60,
                child: Center(
                  child: Text(
                    'Lewati',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 48,
                    ),
                  ),
                ),
              ),
            ),
            onSkip: () {},
            pageIndicatorStyle: const PageIndicatorStyle(
              activeColor: Color(Constants.secondColor),
              inactiveColor: Colors.black,
              activeSize: Size(15, 15),
              inactiveSize: Size(15, 15),
            ),
            onDone: () {},
          ),
        ),
      ),
    );
  }
}
