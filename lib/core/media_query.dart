import 'package:flutter/material.dart';

extension MediaQueryExtensions on BuildContext {
bool get isLandScape => MediaQuery.of(this).orientation == Orientation.landscape;
  double get getWidth => MediaQuery.sizeOf(this).shortestSide;

  double get getHeight => MediaQuery.sizeOf(this).longestSide;
}