import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyro_demo/components/eye.dart';
import 'package:gyro_demo/components/menuBar.dart';

class Whoops extends StatefulWidget {
  const Whoops({super.key});

  @override
  State<Whoops> createState() => _WhoopsState();
}

class _WhoopsState extends State<Whoops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 85,
        leading: const Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Awww",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        actions: const [MyMenuBar()],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: FittedBox(
              child: Transform.scale(
                scale: 1.2,
                child: const Row(
                  children: [
                    Text(
                      "WH",
                      style:
                          TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                    ),
                    Eye(),
                    Eye(),
                    Text(
                      "PS",
                      style:
                          TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Something went wrong, please try again.",
                  style: GoogleFonts.lora(
                      fontSize: 40, fontWeight: FontWeight.w100),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Take me home",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade500,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.grey.shade500),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Try Again",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
