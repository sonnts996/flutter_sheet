/*
 Created by Thanh Son on 5/26/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/material.dart';

///
/// a model style
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
/// declare a Container Style for custom style
class ContainerXStyle {
  const ContainerXStyle({
    this.padding = EdgeInsets.zero,
    this.decoration = const BoxDecoration(),
    this.margin = EdgeInsets.zero,
  });

  ///
  /// Container [padding] field
  final EdgeInsets padding;

  ///
  /// Container [decoration] field
  final BoxDecoration decoration;

  ///
  /// Container [margin] field
  final EdgeInsets margin;

  ///
  /// Clone new instance
  ContainerXStyle copyWith(
      {EdgeInsets? padding, BoxDecoration? decoration, EdgeInsets? margin}) {
    return ContainerXStyle(
      padding: padding ?? this.padding,
      decoration: decoration ?? this.decoration,
      margin: margin ?? this.margin,
    );
  }
}

///
/// declare a Button Style for custom style
class ButtonXStyle {
  const ButtonXStyle({
    this.buttonStyle,
    this.textStyle,
  });

  ///
  /// [textStyle] field, if you don't want to use button style
  final TextStyle? textStyle;

  ///
  /// ButtonStyle [buttonStyle] field
  final ButtonStyle? buttonStyle;

  ///
  /// Clone new instance
  ButtonXStyle copyWith({TextStyle? textStyle, ButtonStyle? buttonStyle}) {
    return ButtonXStyle(
      textStyle: textStyle ?? this.textStyle,
      buttonStyle: buttonStyle ?? this.buttonStyle,
    );
  }
}

///
/// for widget with 2 state style
class StateXStyle<T> {
  const StateXStyle({required this.value1, T? value2})
      : value2 = value2 ?? value1;

  ///
  /// first state style
  final T value1;

  ///
  /// second state style
  final T value2;

  ///
  /// Clone new instance
  StateXStyle copyWith({T? value1, T? value2}) {
    return StateXStyle(
      value1: value1 ?? this.value1,
      value2: value2 ?? this.value2,
    );
  }
}


///
/// for widget with 3 state style
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

  State3XStyle copyWith({T? value1, T? value2, T? value3}) {
    return State3XStyle(
      value1: value1 ?? this.value1,
      value2: value2 ?? this.value2,
      value3: value3 ?? this.value3,
    );
  }
}

///
/// for widget with 4 state style
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

  ///
  /// Clone new instance
  State4XStyle copyWith({
    T? value1,
    T? value2,
    T? value3,
    T? value4,
  }) {
    return State4XStyle(
      value1: value1 ?? this.value1,
      value2: value2 ?? this.value2,
      value3: value3 ?? this.value3,
      value4: value4 ?? this.value4,
    );
  }
}

///
/// for widget with a text and another style element
class TextXStyle<T> {
  const TextXStyle({this.textStyle, required this.value});

  ///
  /// style for text
  final TextStyle? textStyle;

  ///
  /// style for another element
  final T value;

  ///
  /// Clone new instance
  TextXStyle<T> copyWith({TextStyle? textStyle, T? value}) {
    return TextXStyle(
      value: value ?? this.value,
      textStyle: textStyle ?? this.textStyle,
    );
  }
}
