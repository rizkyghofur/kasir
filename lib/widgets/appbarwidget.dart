import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title, required this.action})
      : super(key: key);
  final String title;
  final List<Widget> action;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(
        Constants.secondColor,
      ),
      actions: action,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 40,
        ),
      ),
      centerTitle: true,
    );
  }
}
