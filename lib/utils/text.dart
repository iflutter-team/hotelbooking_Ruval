import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hotels/utils/colors.dart';

class TextStyleCommon {
  static const TextStyle containersHeadingStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: ColorsRes.white,
    fontSize: 24,
  );
  static const TextStyle containertextStyle = TextStyle(
    color: ColorsRes.white,
  );
  static const TextStyle continuetextStyle = TextStyle(
    color: ColorsRes.black,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  static const TextStyle hoteltextStyle = TextStyle(
    color: ColorsRes.black,
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );
  static const TextStyle pricetextStyle = TextStyle(
    color: ColorsRes.white54,
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );
  static const TextStyle distextStyle = TextStyle(
    color: ColorsRes.white,
    fontWeight: FontWeight.bold,
    fontSize: 13,
  );
  static TextStyle headingsTextsFont(headingStyles) =>
      GoogleFonts.asul(textStyle: headingStyles);
  static TextStyle textFont(textfont) =>
      GoogleFonts.gabriela(textStyle: textfont);
}
