/*
 Created by Thanh Son on 5/26/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle, TextHeightBehavior;
part 'style.g.dart';
part 'text_form_field.dart';
part 'dropdown.dart';
part 'button.dart';
part 'text_widget.dart';
part 'icon.dart';
part 'container.dart';

///
/// a model for app style
/// you can extends it for your custom not
///
class XStyle {
  const XStyle({
    required this.swatch,
    Color? primary,
    this.brightness = Brightness.light,
  }) : primary = primary ?? swatch;

  ///
  /// it will set to [theme] as [primarySwatch]
  final MaterialColor swatch;

  ///
  /// it will set to [theme] as [primaryColor]
  final Color primary;

  ///
  /// it will set to [theme] as [brightness]
  final Brightness brightness;

  ///
  /// Return [theme] for your app
  ThemeData get theme => ThemeData(
        primarySwatch: swatch,
        primaryColor: primary,
        brightness: brightness,
      );
}

///
/// for widget with 2 state style
@CopyWith()
class StateXStyle<T> {
  const StateXStyle({required this.value1, T? value2})
      : value2 = value2 ?? value1;

  ///
  /// first state style
  final T value1;

  ///
  /// second state style
  final T value2;
}

///
/// for widget with 3 state style
@CopyWith()
class State3XStyle<T> {
  const State3XStyle({
    required this.value1,
    T? value2,
    T? value3,
  })  : value2 = value2 ?? value1,
        value3 = value3 ?? value1;

  ///
  /// first state style
  final T value1;

  ///
  /// second state style
  final T value2;

  ///
  /// third state style
  final T value3;
}

///
/// for widget with 4 state style
@CopyWith()
class State4XStyle<T> {
  const State4XStyle({
    required this.value1,
    T? value2,
    T? value3,
    T? value4,
  })  : value2 = value2 ?? value1,
        value3 = value3 ?? value1,
        value4 = value4 ?? value1;

  ///
  /// fist state style
  final T value1;

  ///
  /// second state style
  final T value2;

  ///
  /// third state style
  final T value3;

  ///
  /// forth state style
  final T value4;
}
