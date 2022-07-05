import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';

class AddMenuWidget extends StatelessWidget {
  const AddMenuWidget({Key? key, required this.onPressed, required this.text}) : super(key: key);
  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 65,
      color: const Color(Constants.secondColor),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(const Color(Constants.secondColor)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 48),
        ),
      ),
    );
  }
}
