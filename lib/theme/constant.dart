import 'package:flutter/material.dart';
import 'package:mqdc_one/theme/palette.dart';

const SizedBox spaceCol5 = SizedBox(height: 5);
const SizedBox spaceCol10 = SizedBox(height: 10);
const SizedBox spaceCol20 = SizedBox(height: 20);
const SizedBox spaceCol30 = SizedBox(height: 30);
const SizedBox spaceRow5 = SizedBox(width: 5);
const SizedBox spaceRow10 = SizedBox(width: 10);
const SizedBox spaceRow20 = SizedBox(width: 20);

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeH;
  static double? blockSizeV;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData?.size.width;
    screenHeight = _mediaQueryData?.size.height;
    blockSizeH = screenWidth! / 100;
    blockSizeV = screenHeight! / 100;
  }
}

final h1TealBold = TextStyle(
    fontSize: SizeConfig.blockSizeH! * 5,
    color: Palette.teal,
    fontWeight: FontWeight.bold);

final h2TealNormal = TextStyle(
    fontSize: SizeConfig.blockSizeH! * 4,
    color: Palette.teal,
    fontWeight: FontWeight.normal);

final h2TealBold = TextStyle(
    fontSize: SizeConfig.blockSizeH! * 4,
    color: Palette.teal,
    fontWeight: FontWeight.bold);

final h2GreyNormal = TextStyle(
    fontSize: SizeConfig.blockSizeH! * 4,
    color: Palette.grey,
    fontWeight: FontWeight.normal);

final h35Black54Normal = TextStyle(
    fontSize: SizeConfig.blockSizeH! * 3.5,
    color: Palette.black54,
    fontWeight: FontWeight.normal);

final h4GreyNormal = TextStyle(
    fontSize: SizeConfig.blockSizeH! * 2.8,
    color: Palette.grey,
    fontWeight: FontWeight.normal);
