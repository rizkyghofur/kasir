import 'package:flutter/material.dart';
import 'package:kasir/constants/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key, required this.keyboardType, required this.hintText})
      : super(key: key);
  final String hintText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 32,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Color(Constants.secondColor), width: 5),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Color(Constants.secondColor), width: 5),
        ),
      ),
      style: const TextStyle(
        fontSize: 32,
      ),
    );
  }
}
