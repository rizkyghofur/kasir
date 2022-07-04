import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';

class BottomPageWidget extends StatelessWidget {
  const BottomPageWidget(
      {Key? key, required this.onPressed, required this.text})
      : super(key: key);
  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: const Color(Constants.secondColor),
      child: Center(
        child: SizedBox(
          width: 225,
          height: 60,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
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
        ),
      ),
    );
  }
}
