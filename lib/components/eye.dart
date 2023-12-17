import 'dart:math';

import 'package:flutter/material.dart';

class Eye extends StatefulWidget {
  const Eye({super.key});

  @override
  State<Eye> createState() => _EyeState();
}

class _EyeState extends State<Eye> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: pi / 8,
            child: ClipOval(
              child: Container(
                width: 50,
                height: 75,
                decoration: const BoxDecoration(color: Colors.black),
              ),
            ),
          ),
          Positioned(
            left: 5,
            top: 3,
            child: Transform.rotate(
              angle: pi / 8,
              child: ClipOval(
                child: Container(
                  width: 40,
                  height: 65,
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor),
                ),
              ),
            ),
          ),
          Container(
            width: 32,
            height: 32,
            decoration: const BoxDecoration(
                color: Colors.black, shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }
}
