/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/material.dart';
import 'package:flutter_stylesheet/flutter_stylesheet.dart';
import 'package:flutter_stylesheet/src/stylesheet/mixin/styleclass_finder.dart';

abstract class FlutterStyleSheet with StyleClassFinder {
  const FlutterStyleSheet();

  Map<String, dynamic> get styles;

  ThemeData get theme;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) return false;
    return other is FlutterStyleSheet && styles == other.styles;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => styles.hashCode;

  @override
  T findIterable<T>(Iterable<String> classPointer) {
    var data = absoluteFind(styles, classPointer.elementAt(0));
    for (int i = 1; i < classPointer.length; i++) {
      data = absoluteFind(data, classPointer.elementAt(i));
    }
    if (data is T) {
      return data;
    } else {
      throw StyleNotFoundException(classPointer.join('.'));
    }
  }
}
