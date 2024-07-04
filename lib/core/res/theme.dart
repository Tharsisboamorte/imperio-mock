import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  final textTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(
      fontSize: 98,
      fontWeight: FontWeight.w400,
      letterSpacing: -1.5,
    ),
    displayMedium: GoogleFonts.montserrat(
      fontSize: 61,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.5,
    ),
    displaySmall: GoogleFonts.montserrat(
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: GoogleFonts.montserrat(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.25,
    ),
    headlineSmall: GoogleFonts.montserrat(
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),
    titleLarge: GoogleFonts.montserrat(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.15,
    ),
    titleMedium: GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    titleSmall: GoogleFonts.montserrat(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.1,
    ),
    bodyLarge: GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
    bodyMedium: GoogleFonts.montserrat(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.25,
    ),
    labelLarge: GoogleFonts.montserrat(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.25,
    ),
    bodySmall: GoogleFonts.montserrat(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.4,
    ),
    labelSmall: GoogleFonts.montserrat(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.5,
    ),
  );


  final inputTheme = InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        width: 2,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        width: 2,
      ),
    ),
  );


}
