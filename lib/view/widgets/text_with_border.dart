import 'package:flutter/material.dart';

import '../../contracts.dart';

class TextWithBorder extends StatelessWidget {
  const TextWithBorder({
    super.key,
    required this.text,
    required this.style,
  });
  final String text;
  final TextWithBorderStyle style;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: style.margin,
      padding: style.padding,
      decoration:
          BoxDecoration(border: Border.all(color: style.colour), borderRadius: BorderRadius.circular(style.radius)),
      child: Text(text, style: style.textStyle),
    );
  }
}
