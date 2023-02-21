import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:megacom_second_stage/core/color.dart';

class Style {
  static TextStyle montserrat_30_700White = GoogleFonts.montserrat(
      textStyle: TextStyle(
          fontSize: 30, color: Palette.white, fontWeight: FontWeight.w700));

  static TextStyle montserrat_16_800White = GoogleFonts.montserrat(
      textStyle: TextStyle(
          fontSize: 16, color: Palette.white, fontWeight: FontWeight.w600));

  static TextStyle montserrat_14_600White = GoogleFonts.montserrat(
      textStyle: TextStyle(
          fontSize: 14, color:Palette.white, fontWeight: FontWeight.w600));

  static TextStyle montserrat_16_700Black = GoogleFonts.montserrat(
      textStyle: TextStyle(
          fontSize: 16, color:Palette.black, fontWeight: FontWeight.w700));

  static TextStyle montserrat_14_300Black = GoogleFonts.montserrat(
      textStyle: TextStyle(
          fontSize: 15.5, color:Palette.black, fontWeight: FontWeight.w300));

  static TextStyle montserrat_10_800White = GoogleFonts.montserrat(
      textStyle: TextStyle(
          fontSize: 15, color:Palette.white, fontWeight: FontWeight.w800));




  static TextStyle inter_15_900White = GoogleFonts.inter(
      textStyle: TextStyle(
          fontSize: 15, color:Palette.white, fontWeight: FontWeight.w900));

  static TextStyle inter_14_400White = GoogleFonts.inter(
      textStyle: TextStyle(
          fontSize: 14, color:Palette.black, fontWeight: FontWeight.w400));
}
