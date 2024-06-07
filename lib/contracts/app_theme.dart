import 'package:flutter/material.dart';

import 'text_with_border_style.dart';

abstract class AppTheme {
  TextStyle get mainTextStyle;
  TextStyle get titleTextStyle;

  TextWithBorderStyle get textWithBorderStyle;
}
