/*
 Created by Thanh Son on 5/26/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/material.dart';

enum ThemeMode { dark, light }

class XStyle {
  const XStyle(
      {required this.swatch, Color? primary, this.themeMode = ThemeMode.light})
      : primary = primary ?? swatch;

  final MaterialColor swatch;
  final Color primary;
  final ThemeMode themeMode;

  ThemeData get theme => ThemeData(
      primarySwatch: swatch,
      primaryColor: primary,
      brightness:
          themeMode == ThemeMode.dark ? Brightness.dark : Brightness.light);
}
