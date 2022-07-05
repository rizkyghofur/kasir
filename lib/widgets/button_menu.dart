import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';

class ButtonMenu extends StatelessWidget {
  const ButtonMenu(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onPressed})
      : super(key: key);
  final String title;
  final Icon icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(Constants.secondColor),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      ),
      child: Center(
        child: SizedBox(
          width: 90,
          height: 90,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(
                title,
                style: const TextStyle(fontSize: 36),
              )
            ],
          ),
        ),
      ),
    );
  }
}
