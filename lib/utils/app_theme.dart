import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultAppThemes {
  DefaultAppThemes._();

  static final statusBarStyleLight = SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.black45,
  );

  static const defaultSystemUIOverlayStyle = SystemUiOverlayStyle(
    statusBarColor: Colors.blueAccent,
  );

  static const blueSystemUIOverlayStyle = SystemUiOverlayStyle(
    statusBarColor: Colors.blueAccent,
  );
}

class Insets {
  const Insets._();

  static double scale = 1;

  // Regular paddings
  static double get xs => 4 * scale;

  static double get sm => 8 * scale;

  static double get med => 12 * scale;

  static double get lg => 16 * scale;

  static double get xl => 32 * scale;

  static double get xxl => 64 * scale;

  static double get xxxl => 128 * scale;
}
