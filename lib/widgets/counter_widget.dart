import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.black),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                counter--;
              });
            },
            child: const Icon(
              Icons.remove,
              color: Colors.white,
              size: 20,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.white,
            ),
            child: Text(
              "$counter",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                counter++;
              });
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
