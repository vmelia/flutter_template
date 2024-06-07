import 'package:flutter/material.dart';

import '../../contracts.dart';

class AppThemeImpl implements AppTheme {
  final _textStyle = const TextStyle(fontSize: 14, fontWeight: FontWeight.normal);
  final _margin = const EdgeInsets.all(5.0);
  final _padding = const EdgeInsets.all(5.0);

  @override
  TextStyle get mainTextStyle => _textStyle;

  @override
  TextStyle get titleTextStyle => _textStyle.copyWith(fontSize: 24, fontWeight: FontWeight.bold);

  @override
  TextWithBorderStyle get textWithBorderStyle => TextWithBorderStyle(
        textStyle: _textStyle,
        margin: _margin,
        padding: _padding,
        colour: Colors.blue,
        radius: 15.0,
      );
}
