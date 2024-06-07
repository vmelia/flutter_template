import 'package:flutter/material.dart';

class TextWithBorderStyle {
  const TextWithBorderStyle({
    required this.textStyle,
    required this.margin,
    required this.padding,
    required this.colour,
    required this.radius,
  });

  final TextStyle textStyle;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color colour;
  final double radius;
}

extension TextWithBorderStyleCopyWith on TextWithBorderStyle {
  TextWithBorderStyle copyWith({
    TextStyle? textStyle,
    EdgeInsets? margin,
    EdgeInsets? padding,
    Color? colour,
    double? radius,
  }) =>
      TextWithBorderStyle(
        textStyle: textStyle ?? this.textStyle,
        margin: margin ?? this.margin,
        padding: padding ?? this.padding,
        colour: colour ?? this.colour,
        radius: radius ?? this.radius,
      );
}
