import 'package:flutter/material.dart';

import '../../contracts.dart';

class AppThemeImpl implements AppTheme {
  final _textStyle = const TextStyle(fontSize: 14, fontWeight: FontWeight.normal);
  final _padding = const EdgeInsets.all(5.0);
  final _textAlign = TextAlign.center;

  @override
  AppTextStyle get mainTextStyle => AppTextStyle(
        textStyle: _textStyle,
        padding: _padding,
        textAlign: _textAlign,
      );

  @override
  AppTextStyle get titleTextStyle =>
      mainTextStyle.copyWith(textStyle: _textStyle.copyWith(fontSize: 24, fontWeight: FontWeight.bold));
}
