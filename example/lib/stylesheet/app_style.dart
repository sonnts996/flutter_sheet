/*
 Created by Thanh Son on 16/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/material.dart';
import 'package:flutter_sheet/flutter_sheet.dart';

class AppStyle extends XStyle {
  AppStyle({ThemeMode themeMode = ThemeMode.light})
      : super(
          swatch: Colors.indigo,
          primary: Colors.indigo,
          themeMode: themeMode,
        );

  final Color backgroundColor = Colors.white;

  final Color defTextColor = Colors.black;

  TextStyle get titleText =>
      TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: defTextColor);

  TextStyle get subTitleText =>
      TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: defTextColor);

  TextStyle get bodyText =>
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: defTextColor);
}

class AppDartStyle extends AppStyle {
  AppDartStyle()
      : super(
          themeMode: ThemeMode.dark,
        );

  @override
  // TODO: implement backgroundColor
  Color get backgroundColor => Colors.black54;

  @override
  // TODO: implement defTextColor
  Color get defTextColor => Colors.white;
}
