/*
 Created by Thanh Son on 16/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/material.dart';
import 'package:flutter_sheet/flutter_sheet.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle extends XStyle {
  AppStyle({Brightness brightness = Brightness.light})
      : super(
          swatch: Colors.indigo,
          primary: Colors.indigo,
          brightness: brightness,
        );

  final Color backgroundColor = Colors.white;

  final Color defTextColor = Colors.black;

  TextXStyle<StateXStyle<Color>> get expansionTitle => TextXStyle(
      textStyle: _textStyle(const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
      )),
      value: const StateXStyle(
        value1: Colors.black38,
        value2: Colors.indigo,
      ));

  TextStyle _textStyle(TextStyle style) => GoogleFonts.roboto(textStyle: style);

  TextStyle get appbarTitleText => _textStyle(const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ));

  TextStyle get titleText => _textStyle(TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: defTextColor,
      ));

  TextStyle get subTitleText => _textStyle(TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: defTextColor,
      ));

  TextStyle get bodyText => _textStyle(TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: defTextColor,
      ));
}

class AppDartStyle extends AppStyle {
  AppDartStyle() : super(brightness: Brightness.dark);

  @override
  // TODO: implement backgroundColor
  Color get backgroundColor => Colors.black54;

  @override
  // TODO: implement defTextColor
  Color get defTextColor => Colors.white;

  @override
  // TODO: implement expansionTitle
  TextXStyle<StateXStyle<Color>> get expansionTitle =>
      super.expansionTitle.copyWith(
              value: const StateXStyle(
            value1: Colors.grey,
            value2: Colors.lightGreenAccent,
          ));
}
