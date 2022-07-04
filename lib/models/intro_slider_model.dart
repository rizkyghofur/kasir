import 'package:flutter_onboard/flutter_onboard.dart';

class IntroSliderModel {
  static List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: "Akurat",
      description:
          "Perhitungan jumlah tagihan pesanan jauh lebih akurat dan efisien",
      imgUrl: "assets/images/intro1.png",
    ),
    const OnBoardModel(
      title: "Aman",
      description:
          "Makanan atau minuman yang dipesan sesuai dengan struk pemesanan",
      imgUrl: 'assets/images/intro2.png',
    ),
    const OnBoardModel(
      title: "Mudah",
      description: "Mencatat pesanan jauh lebih mudah dan cepat",
      imgUrl: 'assets/images/intro3.png',
    ),
  ];
}
