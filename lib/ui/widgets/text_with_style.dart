import 'package:flutter/material.dart';

class TextWithStyle extends Text {
  TextWithStyle(String data, {color, textAlign = TextAlign.center, factor = 1.1, textStyle})
      : super(data,
            textAlign: textAlign,
            textScaleFactor: factor,
            style: textStyle ?? TextStyle(color: color));
}