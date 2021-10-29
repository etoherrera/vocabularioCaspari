import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vocabulariocaspari/utilities/size_config.dart';

// ThemeData colors and other UI constants
const kColor_Caspari = Color(0xff0264a3);
const kColor_Bluetooth = Color(0xff0079ff);
const kColor_BSCI = Color(0xff07457e);
const kColor_Clearblue = Color(0xff7e95b1);
const kColor_Reddish = Color(0xffff5555);
const kColor_Purple = Color(0xff3737c8);
const kColor_ScanBlue = Color(0xff0052ff);
const kColor_SkyBlue = Color(0xffd4e8ff);
const kColor_Grayish = Color(0xffdadada);
const kColor_DarkGray = Color(0xff808080);

final kTitle = TextStyle(
    fontFamily: GoogleFonts.comfortaa().fontFamily,
    fontSize: SizeConfig.useMobileLayout! ? 50.0 : 100,
    color: Colors.white,
    fontWeight: FontWeight.bold);

final kPageTitle = TextStyle(
    fontFamily: GoogleFonts.comfortaa().fontFamily,
    fontSize: SizeConfig.useMobileLayout! ? 60.0 : 120,
    color: Colors.black,
    fontWeight: FontWeight.normal);

final kMenuTitle = TextStyle(
    fontFamily: GoogleFonts.chewy().fontFamily,
    fontSize: SizeConfig.useMobileLayout! ? 30.0 : 60,
    color: Colors.white,
    fontWeight: FontWeight.normal);

final kTileText = TextStyle(
    fontFamily: GoogleFonts.comingSoon().fontFamily,
    fontSize: SizeConfig.useMobileLayout! ? 25.0 : 50.0,
    color: Colors.white,
    fontWeight: FontWeight.bold);

// Icon and figures
final kButtonWidth = SizeConfig.useMobileLayout! ? 100.0 : 200.0;
final kButtonHeight = SizeConfig.useMobileLayout! ? 50.0 : 100.0;
final kIconSize = SizeConfig.useMobileLayout! ? 40.0 : 80.0;
final k50Sizing = SizeConfig.useMobileLayout! ? 40.0 : 50.0;
final k100Sizing = SizeConfig.useMobileLayout! ? 70.0 : 100.0;
final kBottomIconSize = SizeConfig.useMobileLayout! ? 30.0 : 50.0;

final kLogoPath = SizeConfig.useMobileLayout!
    ? 'images/CaspariLogoMobile.jpg'
    : 'images/CaspariLogo1.jpg';
