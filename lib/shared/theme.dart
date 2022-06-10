import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 14.0;

Color kBrandColor = Color(0xffC9111B);
Color kBlackColor = Color(0xff303030);
Color kGreyColor = Color(0xff9698A9);
Color kBgColor = Color(0xffFAFAFA);
Color kWhiteColor = Color(0xffFFFFFF);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
    color: kWhiteColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
    color: kGreyColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;