import 'package:flutter/material.dart';
import 'package:task3_ui/screens/profile_dash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task3_ui/screens/splash.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      debugShowCheckedModeBanner: false,
      home: ProfileDash(),
    ),
  );
}