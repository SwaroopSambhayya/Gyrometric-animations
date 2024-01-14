import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyro_demo/whoops.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gyro Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: Colors.black,
            textStyle: GoogleFonts.lora(
                color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        textTheme: GoogleFonts.gildaDisplayTextTheme(),
      ),
      home: const Whoops(),
    );
  }
}
