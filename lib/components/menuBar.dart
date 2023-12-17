import 'package:flutter/material.dart';

class MyMenuBar extends StatelessWidget {
  const MyMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10).copyWith(right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 1.5,
            width: 20,
            color: Colors.black,
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 1.5,
            width: 20,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
