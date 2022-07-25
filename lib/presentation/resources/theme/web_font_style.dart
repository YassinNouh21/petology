import 'package:flutter/material.dart';

class WebFontStyle {
  TextStyle _getDefaultFontStyle(double size, FontWeight weight, Color color) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
      fontFamily: 'Arial',
    );
  }

  TextStyle getRegularStyle({double size = 16.0, required Color color}) {
    return _getDefaultFontStyle(size, FontWeight.normal, color);
  }

  TextStyle getBoldStyle({double size = 16.0, required Color color}) {
    return _getDefaultFontStyle(size, FontWeight.bold, color);
  }
}
