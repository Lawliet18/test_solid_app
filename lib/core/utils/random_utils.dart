import 'dart:math';

import 'package:flutter/material.dart';

/// generate a random values
class RandomUtils {
  const RandomUtils._();

  /// generate a random color
  static Color generateRandomColor() {
    final int red = Random().nextInt(256);
    final int green = Random().nextInt(256);
    final int blue = Random().nextInt(256);

    return Color.fromRGBO(red, green, blue, 1);
  }

  /// generate a random size
  static Size generateRandomSize(Size minSize, Size maxSize) {
    final width = Random().nextInt((maxSize.width - minSize.width).toInt()) +
        minSize.width;
    final height = Random().nextInt((maxSize.height - minSize.height).toInt()) +
        minSize.height;

    return Size(width, height);
  }

  /// generate a random offset
  static Offset generateRandomOffset(Size containerSize, Size maxSize) {
    final width =
        Random().nextInt((maxSize.width - containerSize.width).toInt());
    final height =
        Random().nextInt((maxSize.height - containerSize.height).toInt());

    return Offset(width.toDouble(), height.toDouble());
  }

  /// generate a random radius
  static double generateRandomRadius(int max) =>
      Random().nextInt(max).toDouble();
}
