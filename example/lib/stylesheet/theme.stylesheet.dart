/*
 Created by Thanh Son on 4/8/2022.
 Copyright (c) 2022 . All rights reserved.
*/

import 'package:flutter/material.dart';
import 'package:flutter_sheet/flutter_sheet.dart';

class DefaultStyle extends XStyle {
  const DefaultStyle({
    MaterialColor primaryColor = Colors.indigo,
    ThemeMode themeMode = ThemeMode.light,
    this.titleStyle = const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    this.textButtonStyle = const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    this.captionStyle = const TextStyle(
      color: Colors.white,
      fontSize: 13,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
    ),
    this.checkIconColor = Colors.white,
    this.checkIcon = Icons.check,
    this.checkIconSpace = 4,
  }) : super(swatch: primaryColor, themeMode: themeMode);

  final TextStyle titleStyle;
  final TextStyle textButtonStyle;
  final TextStyle captionStyle;

  final Color checkIconColor;
  final IconData checkIcon;
  final double checkIconSpace;

  ButtonStyle get buttonStyle =>
      ElevatedButton.styleFrom(primary: primary, textStyle: textButtonStyle);

  Icon backIcon(bool isDialog) => isDialog
      ? const Icon(
          Icons.close,
          color: Colors.black45,
        )
      : const Icon(
          Icons.home,
          color: Colors.white,
        );

  BoxDecoration get panel => BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.grey));
}

class DarkStyle extends DefaultStyle {
  const DarkStyle() : super(themeMode: ThemeMode.dark);
}
