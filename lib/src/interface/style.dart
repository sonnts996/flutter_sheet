/*
 Created by Thanh Son on 5/26/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/material.dart';

class XStyle {
  const XStyle({
    required this.swatch,
    Color? primary,
    this.themeMode = ThemeMode.light,
  }) : primary = primary ?? swatch;

  final MaterialColor swatch;
  final Color primary;
  final ThemeMode themeMode;

  ThemeData get theme => ThemeData(
      primarySwatch: swatch,
      primaryColor: primary,
      brightness:
          themeMode == ThemeMode.dark ? Brightness.dark : Brightness.light);
}

class ContainerXStyle {
  const ContainerXStyle({
    this.padding = EdgeInsets.zero,
    this.decoration = const BoxDecoration(),
    this.margin = EdgeInsets.zero,
  });

  final EdgeInsets padding;
  final BoxDecoration decoration;
  final EdgeInsets margin;
}

class ButtonXStyle {
  const ButtonXStyle({
    this.buttonStyle,
    this.textStyle,
  });

  final TextStyle? textStyle;
  final ButtonStyle? buttonStyle;
}
