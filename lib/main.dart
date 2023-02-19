import 'package:codigo6_ui/pages/example1_page.dart';
import 'package:codigo6_ui/pages/example2_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      // home: Example1Page(),
      home: Example2Page(),
      debugShowCheckedModeBanner: false,
      title: "Flutter App UI",
    );
  }
}